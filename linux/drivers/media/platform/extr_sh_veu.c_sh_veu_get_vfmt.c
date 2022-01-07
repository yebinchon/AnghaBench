
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_veu_vfmt {int dummy; } ;
struct sh_veu_dev {struct sh_veu_vfmt vfmt_in; struct sh_veu_vfmt vfmt_out; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;





__attribute__((used)) static struct sh_veu_vfmt *sh_veu_get_vfmt(struct sh_veu_dev *veu,
        enum v4l2_buf_type type)
{
 switch (type) {
 case 129:
  return &veu->vfmt_out;
 case 128:
  return &veu->vfmt_in;
 default:
  return ((void*)0);
 }
}
