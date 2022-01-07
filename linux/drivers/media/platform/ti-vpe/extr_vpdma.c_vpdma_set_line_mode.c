
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpdma_data {int dummy; } ;
typedef enum vpdma_channel { ____Placeholder_vpdma_channel } vpdma_channel ;
struct TYPE_2__ {int cstat_offset; } ;


 int VPDMA_CSTAT_LINE_MODE_MASK ;
 int VPDMA_CSTAT_LINE_MODE_SHIFT ;
 TYPE_1__* chan_info ;
 int write_field_reg (struct vpdma_data*,int,int,int ,int ) ;

void vpdma_set_line_mode(struct vpdma_data *vpdma, int line_mode,
  enum vpdma_channel chan)
{
 int client_cstat = chan_info[chan].cstat_offset;

 write_field_reg(vpdma, client_cstat, line_mode,
  VPDMA_CSTAT_LINE_MODE_MASK, VPDMA_CSTAT_LINE_MODE_SHIFT);
}
