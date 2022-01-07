
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb_node; } ;
struct ubi_device {scalar_t__ works_count; TYPE_1__ free; } ;


 int dbg_wl (char*) ;
 int do_work (struct ubi_device*) ;

__attribute__((used)) static int produce_free_peb(struct ubi_device *ubi)
{
 int err;

 while (!ubi->free.rb_node && ubi->works_count) {
  dbg_wl("do one work synchronously");
  err = do_work(ubi);

  if (err)
   return err;
 }

 return 0;
}
