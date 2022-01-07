
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int u32 ;
struct mtd_partition {int offset; int size; scalar_t__ mask_flags; int name; } ;
struct mtd_info {int erasesize; } ;
typedef int imginfo ;
typedef int footer ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kstrdup (char*,int ) ;
 int mtd_read (struct mtd_info*,int,int,size_t*,int *) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int,...) ;
 int word_sum_v2 (int*,int) ;

__attribute__((used)) static int afs_parse_v2_partition(struct mtd_info *mtd,
      u_int off, struct mtd_partition *part)
{
 u_int ptr;
 u32 footer[12];
 u32 imginfo[36];
 char *name;
 u32 version;
 u32 entrypoint;
 u32 attributes;
 u32 region_count;
 u32 block_start;
 u32 block_end;
 u32 crc;
 size_t sz;
 int ret;
 int i;
 int pad = 0;

 pr_debug("Parsing v2 partition @%08x-%08x\n",
   off, off + mtd->erasesize);


 ptr = off + mtd->erasesize - sizeof(footer);
 ret = mtd_read(mtd, ptr, sizeof(footer), &sz, (u_char *)footer);
 if ((ret < 0) || (ret >= 0 && sz != sizeof(footer))) {
  pr_err("AFS: mtd read failed at 0x%x: %d\n",
         ptr, ret);
  return -EIO;
 }
 name = (char *) &footer[0];
 version = footer[9];
 ptr = off + mtd->erasesize - sizeof(footer) - footer[8];

 pr_debug("found image \"%s\", version %08x, info @%08x\n",
   name, version, ptr);


 ret = mtd_read(mtd, ptr, sizeof(imginfo), &sz, (u_char *)imginfo);
 if ((ret < 0) || (ret >= 0 && sz != sizeof(imginfo))) {
  pr_err("AFS: mtd read failed at 0x%x: %d\n",
         ptr, ret);
  return -EIO;
 }


 crc = word_sum_v2(&imginfo[1], 34);
 if (!crc) {
  pr_debug("Padding 1 word (4 bytes)\n");
  pad = 1;
 } else {

  crc = word_sum_v2(&imginfo[2], 34);
  if (!crc) {
   pr_debug("Padding 2 words (8 bytes)\n");
   pad = 2;
  }
 }
 if (crc) {
  pr_err("AFS: bad checksum on v2 image info: %08x\n", crc);
  return -EINVAL;
 }
 entrypoint = imginfo[pad];
 attributes = imginfo[pad+1];
 region_count = imginfo[pad+2];
 block_start = imginfo[20];
 block_end = imginfo[21];

 pr_debug("image entry=%08x, attr=%08x, regions=%08x, "
   "bs=%08x, be=%08x\n",
   entrypoint, attributes, region_count,
   block_start, block_end);

 for (i = 0; i < region_count; i++) {
  u32 region_load_addr = imginfo[pad + 3 + i*4];
  u32 region_size = imginfo[pad + 4 + i*4];
  u32 region_offset = imginfo[pad + 5 + i*4];
  u32 region_start;
  u32 region_end;

  pr_debug("  region %d: address: %08x, size: %08x, "
    "offset: %08x\n",
    i,
    region_load_addr,
    region_size,
    region_offset);

  region_start = off + region_offset;
  region_end = region_start + region_size;

  region_end += (mtd->erasesize - 1);
  region_end &= ~(mtd->erasesize -1);
  pr_debug("   partition start = %08x, partition end = %08x\n",
    region_start, region_end);


  part->name = kstrdup(name, GFP_KERNEL);
  if (!part->name)
   return -ENOMEM;
  part->offset = region_start;
  part->size = region_end - region_start;
  part->mask_flags = 0;
 }

 return 0;
}
