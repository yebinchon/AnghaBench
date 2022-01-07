
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int TOTAL_PORT_NUM ;
 int port_cfg_mirror_rx (struct ksz_hw*,int,int ) ;
 int port_cfg_mirror_sniffer (struct ksz_hw*,int,int ) ;
 int port_cfg_mirror_tx (struct ksz_hw*,int,int ) ;
 int sw_cfg_mirror_rx_tx (struct ksz_hw*,int ) ;

__attribute__((used)) static void sw_init_mirror(struct ksz_hw *hw)
{
 int port;

 for (port = 0; port < TOTAL_PORT_NUM; port++) {
  port_cfg_mirror_sniffer(hw, port, 0);
  port_cfg_mirror_rx(hw, port, 0);
  port_cfg_mirror_tx(hw, port, 0);
 }
 sw_cfg_mirror_rx_tx(hw, 0);
}
