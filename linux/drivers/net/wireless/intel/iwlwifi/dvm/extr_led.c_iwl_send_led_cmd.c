
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_priv {int trans; } ;
struct iwl_led_cmd {int dummy; } ;
struct iwl_host_cmd {int flags; int data; int len; int id; } ;


 int CMD_ASYNC ;
 int CSR_LED_BSM_CTRL_MSK ;
 int CSR_LED_REG ;
 int REPLY_LEDS_CMD ;
 int iwl_dvm_send_cmd (struct iwl_priv*,struct iwl_host_cmd*) ;
 int iwl_read32 (int ,int ) ;
 int iwl_write32 (int ,int ,int) ;

__attribute__((used)) static int iwl_send_led_cmd(struct iwl_priv *priv, struct iwl_led_cmd *led_cmd)
{
 struct iwl_host_cmd cmd = {
  .id = REPLY_LEDS_CMD,
  .len = { sizeof(struct iwl_led_cmd), },
  .data = { led_cmd, },
  .flags = CMD_ASYNC,
 };
 u32 reg;

 reg = iwl_read32(priv->trans, CSR_LED_REG);
 if (reg != (reg & CSR_LED_BSM_CTRL_MSK))
  iwl_write32(priv->trans, CSR_LED_REG,
       reg & CSR_LED_BSM_CTRL_MSK);

 return iwl_dvm_send_cmd(priv, &cmd);
}
