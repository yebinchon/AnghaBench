
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct camera_data {int num_frames; TYPE_1__* buffers; } ;
struct TYPE_2__ {scalar_t__ status; scalar_t__ ts; } ;


 scalar_t__ FRAME_READY ;

__attribute__((used)) static int find_earliest_filled_buffer(struct camera_data *cam)
{
 int i;
 int found = -1;
 for (i=0; i<cam->num_frames; i++) {
  if(cam->buffers[i].status == FRAME_READY) {
   if(found < 0) {
    found = i;
   } else {

    if (cam->buffers[i].ts < cam->buffers[found].ts)
     found = i;
   }
  }
 }
 return found;
}
