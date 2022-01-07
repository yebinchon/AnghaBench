
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slcan {int rcount; unsigned char* rbuff; int flags; TYPE_2__* dev; } ;
struct TYPE_3__ {int rx_over_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int SLC_MTU ;
 int SLF_ERROR ;
 int set_bit (int ,int *) ;
 int slc_bump (struct slcan*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void slcan_unesc(struct slcan *sl, unsigned char s)
{
 if ((s == '\r') || (s == '\a')) {
  if (!test_and_clear_bit(SLF_ERROR, &sl->flags) &&
      (sl->rcount > 4)) {
   slc_bump(sl);
  }
  sl->rcount = 0;
 } else {
  if (!test_bit(SLF_ERROR, &sl->flags)) {
   if (sl->rcount < SLC_MTU) {
    sl->rbuff[sl->rcount++] = s;
    return;
   } else {
    sl->dev->stats.rx_over_errors++;
    set_bit(SLF_ERROR, &sl->flags);
   }
  }
 }
}
