
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;
struct port_info {TYPE_1__ mac; } ;
struct adapter {int dummy; } ;


 scalar_t__ A_XGM_TXFIFO_CFG ;
 int F_ENDROPPKT ;
 int t3_set_reg_field (struct adapter*,scalar_t__,int ,int ) ;

__attribute__((used)) static void disable_tx_fifo_drain(struct adapter *adapter,
      struct port_info *pi)
{
 t3_set_reg_field(adapter, A_XGM_TXFIFO_CFG + pi->mac.offset,
    F_ENDROPPKT, 0);
}
