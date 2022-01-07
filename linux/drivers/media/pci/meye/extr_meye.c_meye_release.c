
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int in_use; } ;


 int clear_bit (int ,int *) ;
 int mchip_dma_free () ;
 int mchip_hic_stop () ;
 TYPE_1__ meye ;
 int v4l2_fh_release (struct file*) ;

__attribute__((used)) static int meye_release(struct file *file)
{
 mchip_hic_stop();
 mchip_dma_free();
 clear_bit(0, &meye.in_use);
 return v4l2_fh_release(file);
}
