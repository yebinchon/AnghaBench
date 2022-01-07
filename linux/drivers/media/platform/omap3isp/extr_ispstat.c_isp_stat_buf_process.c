
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {scalar_t__ state; int buf_err; } ;


 scalar_t__ ISPSTAT_ENABLED ;
 int STAT_BUF_DONE ;
 int STAT_NO_BUF ;
 int atomic_add_unless (int *,int,int ) ;
 int isp_stat_buf_next (struct ispstat*) ;
 int isp_stat_buf_queue (struct ispstat*) ;

__attribute__((used)) static int isp_stat_buf_process(struct ispstat *stat, int buf_state)
{
 int ret = STAT_NO_BUF;

 if (!atomic_add_unless(&stat->buf_err, -1, 0) &&
     buf_state == STAT_BUF_DONE && stat->state == ISPSTAT_ENABLED) {
  ret = isp_stat_buf_queue(stat);
  isp_stat_buf_next(stat);
 }

 return ret;
}
