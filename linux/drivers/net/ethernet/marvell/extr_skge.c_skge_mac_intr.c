
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_hw {int dummy; } ;


 int genesis_mac_intr (struct skge_hw*,int) ;
 scalar_t__ is_genesis (struct skge_hw*) ;
 int yukon_mac_intr (struct skge_hw*,int) ;

__attribute__((used)) static void skge_mac_intr(struct skge_hw *hw, int port)
{
 if (is_genesis(hw))
  genesis_mac_intr(hw, port);
 else
  yukon_mac_intr(hw, port);
}
