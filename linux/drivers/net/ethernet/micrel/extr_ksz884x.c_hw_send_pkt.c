
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct ksz_desc* cur; } ;
struct ksz_hw {scalar_t__ tx_int_cnt; scalar_t__ tx_int_mask; scalar_t__ io; int dst_ports; scalar_t__ tx_size; TYPE_3__ tx_desc_info; } ;
struct TYPE_8__ {int last_seg; int intr; int dest_port; } ;
struct TYPE_5__ {TYPE_4__ tx; } ;
struct TYPE_6__ {TYPE_1__ buf; } ;
struct ksz_desc {TYPE_2__ sw; } ;


 scalar_t__ KS_DMA_TX_START ;
 int release_desc (struct ksz_desc*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hw_send_pkt(struct ksz_hw *hw)
{
 struct ksz_desc *cur = hw->tx_desc_info.cur;

 cur->sw.buf.tx.last_seg = 1;


 if (hw->tx_int_cnt > hw->tx_int_mask) {
  cur->sw.buf.tx.intr = 1;
  hw->tx_int_cnt = 0;
  hw->tx_size = 0;
 }


 cur->sw.buf.tx.dest_port = hw->dst_ports;

 release_desc(cur);

 writel(0, hw->io + KS_DMA_TX_START);
}
