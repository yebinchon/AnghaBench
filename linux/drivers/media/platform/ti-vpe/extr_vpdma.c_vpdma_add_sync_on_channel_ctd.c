
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* addr; int size; } ;
struct vpdma_desc_list {struct vpdma_ctd* next; TYPE_1__ buf; } ;
struct vpdma_ctd {int type_source_ctl; scalar_t__ w2; scalar_t__ w1; scalar_t__ w0; } ;
typedef enum vpdma_channel { ____Placeholder_vpdma_channel } vpdma_channel ;
struct TYPE_4__ {int num; } ;


 int CTD_TYPE_SYNC_ON_CHANNEL ;
 int WARN_ON (int) ;
 TYPE_2__* chan_info ;
 int ctd_type_source_ctl (int ,int ) ;
 int dump_ctd (struct vpdma_ctd*) ;

void vpdma_add_sync_on_channel_ctd(struct vpdma_desc_list *list,
  enum vpdma_channel chan)
{
 struct vpdma_ctd *ctd;

 ctd = list->next;
 WARN_ON((void *)(ctd + 1) > (list->buf.addr + list->buf.size));

 ctd->w0 = 0;
 ctd->w1 = 0;
 ctd->w2 = 0;
 ctd->type_source_ctl = ctd_type_source_ctl(chan_info[chan].num,
    CTD_TYPE_SYNC_ON_CHANNEL);

 list->next = ctd + 1;

 dump_ctd(ctd);
}
