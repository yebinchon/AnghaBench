
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_device {int reset_complete; } ;


 int complete (int *) ;

__attribute__((used)) static inline void vfe_isr_reset_ack(struct vfe_device *vfe)
{
 complete(&vfe->reset_complete);
}
