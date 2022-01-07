
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int avail; TYPE_5__* cur; } ;
struct ksz_hw {scalar_t__ tx_size; TYPE_4__ tx_desc_info; scalar_t__ tx_int_mask; scalar_t__ tx_int_cnt; } ;
struct TYPE_6__ {int first_seg; } ;
struct TYPE_7__ {TYPE_1__ tx; } ;
struct TYPE_8__ {TYPE_2__ buf; } ;
struct TYPE_10__ {TYPE_3__ sw; } ;


 scalar_t__ MAX_TX_HELD_SIZE ;
 int get_tx_pkt (TYPE_4__*,TYPE_5__**) ;

__attribute__((used)) static int hw_alloc_pkt(struct ksz_hw *hw, int length, int physical)
{

 if (hw->tx_desc_info.avail <= 1)
  return 0;


 get_tx_pkt(&hw->tx_desc_info, &hw->tx_desc_info.cur);
 hw->tx_desc_info.cur->sw.buf.tx.first_seg = 1;


 ++hw->tx_int_cnt;
 hw->tx_size += length;


 if (hw->tx_size >= MAX_TX_HELD_SIZE)
  hw->tx_int_cnt = hw->tx_int_mask + 1;

 if (physical > hw->tx_desc_info.avail)
  return 1;

 return hw->tx_desc_info.avail;
}
