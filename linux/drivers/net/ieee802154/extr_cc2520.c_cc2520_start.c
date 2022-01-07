
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {int priv; } ;


 int CC2520_CMD_SRXON ;
 int cc2520_cmd_strobe (int ,int ) ;

__attribute__((used)) static int cc2520_start(struct ieee802154_hw *hw)
{
 return cc2520_cmd_strobe(hw->priv, CC2520_CMD_SRXON);
}
