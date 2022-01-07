
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {int dummy; } ;


 int MEMSTICK_OVERWRITE_BKST ;
 int msb_reset (struct msb_data*,int) ;
 int msb_set_overwrite_flag (struct msb_data*,int,int ,int) ;
 int pr_notice (char*,int) ;

__attribute__((used)) static int msb_mark_bad(struct msb_data *msb, int pba)
{
 pr_notice("marking pba %d as bad", pba);
 msb_reset(msb, 1);
 return msb_set_overwrite_flag(
   msb, pba, 0, 0xFF & ~MEMSTICK_OVERWRITE_BKST);
}
