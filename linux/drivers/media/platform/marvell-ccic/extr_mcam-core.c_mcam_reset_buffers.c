
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int next_buf; int nbufs; int flags; } ;


 int CF_FRAME_SOF0 ;
 int clear_bit (int,int *) ;

__attribute__((used)) static void mcam_reset_buffers(struct mcam_camera *cam)
{
 int i;

 cam->next_buf = -1;
 for (i = 0; i < cam->nbufs; i++) {
  clear_bit(i, &cam->flags);
  clear_bit(CF_FRAME_SOF0 + i, &cam->flags);
 }
}
