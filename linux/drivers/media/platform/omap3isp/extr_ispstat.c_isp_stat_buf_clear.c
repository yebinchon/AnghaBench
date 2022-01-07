
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ispstat {TYPE_1__* buf; } ;
struct TYPE_2__ {int empty; } ;


 int STAT_MAX_BUFS ;

__attribute__((used)) static void isp_stat_buf_clear(struct ispstat *stat)
{
 int i;

 for (i = 0; i < STAT_MAX_BUFS; i++)
  stat->buf[i].empty = 1;
}
