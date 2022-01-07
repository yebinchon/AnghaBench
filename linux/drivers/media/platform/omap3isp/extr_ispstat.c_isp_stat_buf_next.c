
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct ispstat {int active_buf; TYPE_2__ subdev; TYPE_1__* isp; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 int isp_stat_buf_find_oldest_or_empty (struct ispstat*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void isp_stat_buf_next(struct ispstat *stat)
{
 if (unlikely(stat->active_buf))

  dev_dbg(stat->isp->dev,
   "%s: new buffer requested without queuing active one.\n",
   stat->subdev.name);
 else
  stat->active_buf = isp_stat_buf_find_oldest_or_empty(stat);
}
