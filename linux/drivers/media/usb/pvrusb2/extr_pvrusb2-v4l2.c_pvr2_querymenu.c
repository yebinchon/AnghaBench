
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_querymenu {scalar_t__* name; int index; int id; } ;
struct TYPE_4__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_3__ {struct pvr2_hdw* hdw; } ;


 int pvr2_ctrl_get_valname (int ,int ,scalar_t__*,int,unsigned int*) ;
 int pvr2_hdw_get_ctrl_v4l (struct pvr2_hdw*,int ) ;

__attribute__((used)) static int pvr2_querymenu(struct file *file, void *priv, struct v4l2_querymenu *vm)
{
 struct pvr2_v4l2_fh *fh = file->private_data;
 struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 unsigned int cnt = 0;
 int ret;

 ret = pvr2_ctrl_get_valname(pvr2_hdw_get_ctrl_v4l(hdw, vm->id),
   vm->index,
   vm->name, sizeof(vm->name) - 1,
   &cnt);
 vm->name[cnt] = 0;
 return ret;
}
