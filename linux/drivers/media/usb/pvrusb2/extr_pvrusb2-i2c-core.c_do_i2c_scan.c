
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int name; } ;


 scalar_t__ do_i2c_probe (struct pvr2_hdw*,int) ;
 int pr_info (char*,int ,...) ;

__attribute__((used)) static void do_i2c_scan(struct pvr2_hdw *hdw)
{
 int i;
 pr_info("%s: i2c scan beginning\n", hdw->name);
 for (i = 0; i < 128; i++) {
  if (do_i2c_probe(hdw, i)) {
   pr_info("%s: i2c scan: found device @ 0x%x\n",
          hdw->name, i);
  }
 }
 pr_info("%s: i2c scan done.\n", hdw->name);
}
