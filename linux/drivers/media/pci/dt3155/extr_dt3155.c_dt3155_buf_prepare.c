
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct dt3155_priv {int width; int height; } ;


 struct dt3155_priv* vb2_get_drv_priv (int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,int) ;

__attribute__((used)) static int dt3155_buf_prepare(struct vb2_buffer *vb)
{
 struct dt3155_priv *pd = vb2_get_drv_priv(vb->vb2_queue);

 vb2_set_plane_payload(vb, 0, pd->width * pd->height);
 return 0;
}
