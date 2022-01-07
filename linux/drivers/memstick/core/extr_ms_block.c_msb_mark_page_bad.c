
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {int dummy; } ;


 int MEMSTICK_OVERWRITE_PGST0 ;
 int dbg (char*,int,int) ;
 int msb_reset (struct msb_data*,int) ;
 int msb_set_overwrite_flag (struct msb_data*,int,int,int ) ;

__attribute__((used)) static int msb_mark_page_bad(struct msb_data *msb, int pba, int page)
{
 dbg("marking page %d of pba %d as bad", page, pba);
 msb_reset(msb, 1);
 return msb_set_overwrite_flag(msb,
  pba, page, ~MEMSTICK_OVERWRITE_PGST0);
}
