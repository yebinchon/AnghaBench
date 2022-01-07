
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat_buffer {scalar_t__ frame_number; scalar_t__ empty; } ;
struct ispstat {struct ispstat_buffer* active_buf; struct ispstat_buffer* locked_buf; struct ispstat_buffer* buf; } ;
typedef scalar_t__ s32 ;


 int STAT_MAX_BUFS ;

__attribute__((used)) static struct ispstat_buffer *
__isp_stat_buf_find(struct ispstat *stat, int look_empty)
{
 struct ispstat_buffer *found = ((void*)0);
 int i;

 for (i = 0; i < STAT_MAX_BUFS; i++) {
  struct ispstat_buffer *curr = &stat->buf[i];





  if (curr == stat->locked_buf || curr == stat->active_buf)
   continue;


  if (!look_empty && curr->empty)
   continue;


  if (curr->empty) {
   found = curr;
   break;
  }


  if (!found ||
      (s32)curr->frame_number - (s32)found->frame_number < 0)
   found = curr;
 }

 return found;
}
