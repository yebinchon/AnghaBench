
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_ops {int dummy; } ;


 struct vb2_ops s5p_mfc_dec_qops ;

struct vb2_ops *get_dec_queue_ops(void)
{
 return &s5p_mfc_dec_qops;
}
