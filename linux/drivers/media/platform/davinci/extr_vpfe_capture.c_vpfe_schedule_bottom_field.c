
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_device {scalar_t__ field_off; int cur_frm; } ;
struct TYPE_3__ {int (* setfbaddr ) (unsigned long) ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;


 TYPE_2__* ccdc_dev ;
 int stub1 (unsigned long) ;
 unsigned long videobuf_to_dma_contig (int ) ;

__attribute__((used)) static void vpfe_schedule_bottom_field(struct vpfe_device *vpfe_dev)
{
 unsigned long addr;

 addr = videobuf_to_dma_contig(vpfe_dev->cur_frm);
 addr += vpfe_dev->field_off;
 ccdc_dev->hw_ops.setfbaddr(addr);
}
