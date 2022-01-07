
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {int frame_size; int num_frames; int * frame_buffer; int * buffers; } ;


 int kfree (int *) ;
 int rvfree (int *,int) ;

void cpia2_free_buffers(struct camera_data *cam)
{
 if(cam->buffers) {
  kfree(cam->buffers);
  cam->buffers = ((void*)0);
 }
 if(cam->frame_buffer) {
  rvfree(cam->frame_buffer, cam->frame_size*cam->num_frames);
  cam->frame_buffer = ((void*)0);
 }
}
