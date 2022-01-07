
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct qlc_83xx_quad_entry {unsigned long dr_addr; int ar_addr; int ar_value; } ;
struct qlc_83xx_poll {int status; int mask; } ;
struct qlc_83xx_entry_hdr {int count; scalar_t__ delay; } ;
struct TYPE_3__ {int array_index; int* array; } ;
struct TYPE_4__ {TYPE_1__ reset; } ;


 int EIO ;
 int QLCRD32 (struct qlcnic_adapter*,unsigned long,int*) ;
 int QLC_83XX_MAX_RESET_SEQ_ENTRIES ;
 int qlcnic_83xx_poll_reg (struct qlcnic_adapter*,int ,long,int ,int ) ;
 int qlcnic_83xx_wrt_reg_indirect (struct qlcnic_adapter*,int ,int ) ;

__attribute__((used)) static void qlcnic_83xx_poll_read_list(struct qlcnic_adapter *p_dev,
           struct qlc_83xx_entry_hdr *p_hdr)
{
 long delay;
 int index, i, j, err;
 struct qlc_83xx_quad_entry *entry;
 struct qlc_83xx_poll *poll;
 unsigned long addr;

 poll = (struct qlc_83xx_poll *)((char *)p_hdr +
     sizeof(struct qlc_83xx_entry_hdr));

 entry = (struct qlc_83xx_quad_entry *)((char *)poll +
            sizeof(struct qlc_83xx_poll));
 delay = (long)p_hdr->delay;

 for (i = 0; i < p_hdr->count; i++, entry++) {
  qlcnic_83xx_wrt_reg_indirect(p_dev, entry->ar_addr,
          entry->ar_value);
  if (delay) {
   if (!qlcnic_83xx_poll_reg(p_dev, entry->ar_addr, delay,
        poll->mask, poll->status)){
    index = p_dev->ahw->reset.array_index;
    addr = entry->dr_addr;
    j = QLCRD32(p_dev, addr, &err);
    if (err == -EIO)
     return;

    p_dev->ahw->reset.array[index++] = j;

    if (index == QLC_83XX_MAX_RESET_SEQ_ENTRIES)
     p_dev->ahw->reset.array_index = 1;
   }
  }
 }
}
