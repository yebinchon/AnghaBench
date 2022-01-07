
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
struct sm_oob {int dummy; } ;
struct sm_ftl {int max_lba; int zone_size; void* cis_block; struct ftl_zone* zones; } ;
struct ftl_zone {void** lba_to_phys_table; int initialized; int free_sectors; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int dbg (char*,...) ;
 int dbg_verbose (char*,void*,int) ;
 int get_random_bytes (int*,int) ;
 scalar_t__ kfifo_alloc (int *,int,int ) ;
 int kfifo_free (int *) ;
 int kfifo_in (int *,unsigned char const*,int) ;
 int kfifo_len (int *) ;
 int kfifo_out (int *,unsigned char*,int) ;
 int kfree (void**) ;
 void** kmalloc_array (int,int,int ) ;
 int memset (void**,int,int) ;
 scalar_t__ sm_block_erased (struct sm_oob*) ;
 int sm_block_valid (struct sm_oob*) ;
 scalar_t__ sm_check_block (struct sm_ftl*,int,void*) ;
 int sm_erase_block (struct sm_ftl*,int,void*,int) ;
 int sm_printk (char*,...) ;
 int sm_read_lba (struct sm_oob*) ;
 scalar_t__ sm_read_sector (struct sm_ftl*,int,void*,int ,int *,struct sm_oob*) ;

__attribute__((used)) static int sm_init_zone(struct sm_ftl *ftl, int zone_num)
{
 struct ftl_zone *zone = &ftl->zones[zone_num];
 struct sm_oob oob;
 uint16_t block;
 int lba;
 int i = 0;
 int len;

 dbg("initializing zone %d", zone_num);


 zone->lba_to_phys_table = kmalloc_array(ftl->max_lba, 2, GFP_KERNEL);

 if (!zone->lba_to_phys_table)
  return -ENOMEM;
 memset(zone->lba_to_phys_table, -1, ftl->max_lba * 2);



 if (kfifo_alloc(&zone->free_sectors, ftl->zone_size * 2, GFP_KERNEL)) {
  kfree(zone->lba_to_phys_table);
  return -ENOMEM;
 }


 for (block = 0 ; block < ftl->zone_size ; block++) {


  if (zone_num == 0 && block <= ftl->cis_block)
   continue;


  if (sm_read_sector(ftl, zone_num, block, 0, ((void*)0), &oob)) {
   kfifo_free(&zone->free_sectors);
   kfree(zone->lba_to_phys_table);
   return -EIO;
  }



  if (sm_block_erased(&oob)) {
   kfifo_in(&zone->free_sectors,
    (unsigned char *)&block, 2);
   continue;
  }





  if (!sm_block_valid(&oob)) {
   dbg("PH %04d <-> <marked bad>", block);
   continue;
  }


  lba = sm_read_lba(&oob);




  if (lba == -2 || lba >= ftl->max_lba) {
   dbg("PH %04d <-> LBA %04d(bad)", block, lba);
   continue;
  }




  if (zone->lba_to_phys_table[lba] < 0) {
   dbg_verbose("PH %04d <-> LBA %04d", block, lba);
   zone->lba_to_phys_table[lba] = block;
   continue;
  }

  sm_printk("collision"
   " of LBA %d between blocks %d and %d in zone %d",
   lba, zone->lba_to_phys_table[lba], block, zone_num);


  if (sm_check_block(ftl, zone_num, block))
   continue;


  if (sm_check_block(ftl, zone_num,
     zone->lba_to_phys_table[lba])) {
   zone->lba_to_phys_table[lba] = block;
   continue;
  }





  sm_printk("both blocks are valid, erasing the later");
  sm_erase_block(ftl, zone_num, block, 1);
 }

 dbg("zone initialized");
 zone->initialized = 1;



 if (!kfifo_len(&zone->free_sectors)) {
  sm_printk("no free blocks in zone %d", zone_num);
  return 0;
 }


 get_random_bytes(&i, 2);
 i %= (kfifo_len(&zone->free_sectors) / 2);

 while (i--) {
  len = kfifo_out(&zone->free_sectors,
     (unsigned char *)&block, 2);
  WARN_ON(len != 2);
  kfifo_in(&zone->free_sectors, (const unsigned char *)&block, 2);
 }
 return 0;
}
