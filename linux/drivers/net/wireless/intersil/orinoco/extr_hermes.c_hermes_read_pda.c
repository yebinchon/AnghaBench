
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct hermes {TYPE_1__* ops; scalar_t__ eeprom_pda; } ;
typedef int __le16 ;
struct TYPE_2__ {int (* cmd_wait ) (struct hermes*,int ,int ,int *) ;} ;


 int EINVAL ;
 int HERMES_AUXDATA ;
 int HERMES_CMD_READMIF ;
 int cpu_to_le16 (int) ;
 int hermes_aux_control (struct hermes*,int) ;
 int hermes_aux_setaddr (struct hermes*,int ) ;
 int hermes_read_words (struct hermes*,int ,int *,int) ;
 int le16_to_cpu (int ) ;
 int pr_debug (char*,int,...) ;
 int stub1 (struct hermes*,int ,int ,int *) ;

__attribute__((used)) static int hermes_read_pda(struct hermes *hw, __le16 *pda, u32 pda_addr,
      u16 pda_len)
{
 int ret;
 u16 pda_size;
 u16 data_len = pda_len;
 __le16 *data = pda;

 if (hw->eeprom_pda) {



  ret = hw->ops->cmd_wait(hw, HERMES_CMD_READMIF, 0, ((void*)0));
  if (ret)
   return ret;
 } else {



  pda[0] = cpu_to_le16(pda_len - 2);

  pda[1] = cpu_to_le16(0x0800);
  data_len = pda_len - 4;
  data = pda + 2;
 }


 ret = hermes_aux_control(hw, 1);
 pr_debug("AUX enable returned %d\n", ret);
 if (ret)
  return ret;


 hermes_aux_setaddr(hw, pda_addr);
 hermes_read_words(hw, HERMES_AUXDATA, data, data_len / 2);


 ret = hermes_aux_control(hw, 0);
 pr_debug("AUX disable returned %d\n", ret);


 pda_size = le16_to_cpu(pda[0]);
 pr_debug("Actual PDA length %d, Max allowed %d\n",
   pda_size, pda_len);
 if (pda_size > pda_len)
  return -EINVAL;

 return 0;
}
