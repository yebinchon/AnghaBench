
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {int ec; } ;
struct ubi_device {int wl_lock; struct ubi_wl_entry** lookuptbl; } ;
struct seq_file {struct ubi_device* private; } ;


 void* SEQ_START_TOKEN ;
 int seq_printf (struct seq_file*,char*,int,int) ;
 int seq_puts (struct seq_file*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_io_is_bad (struct ubi_device*,int) ;

__attribute__((used)) static int eraseblk_count_seq_show(struct seq_file *s, void *iter)
{
 struct ubi_device *ubi = s->private;
 struct ubi_wl_entry *wl;
 int *block_number = iter;
 int erase_count = -1;
 int err;


 if (iter == SEQ_START_TOKEN) {
  seq_puts(s,
    "physical_block_number\terase_count\tblock_status\tread_status\n");
  return 0;
 }

 err = ubi_io_is_bad(ubi, *block_number);
 if (err)
  return err;

 spin_lock(&ubi->wl_lock);

 wl = ubi->lookuptbl[*block_number];
 if (wl)
  erase_count = wl->ec;

 spin_unlock(&ubi->wl_lock);

 if (erase_count < 0)
  return 0;

 seq_printf(s, "%-22d\t%-11d\n", *block_number, erase_count);

 return 0;
}
