
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {int priv; } ;


 int CC2520_CMD_SRFOFF ;
 int cc2520_cmd_strobe (int ,int ) ;

__attribute__((used)) static void cc2520_stop(struct ieee802154_hw *hw)
{
 cc2520_cmd_strobe(hw->priv, CC2520_CMD_SRFOFF);
}
