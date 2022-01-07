
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int CSR_RESET ;
 int CSR_RESET_REG_FLAG_MASTER_DISABLED ;
 int CSR_RESET_REG_FLAG_STOP_MASTER ;
 int D_INFO (char*) ;
 int IL_WARN (char*) ;
 int _il_poll_bit (struct il_priv*,int ,int ,int ,int) ;
 int _il_set_bit (struct il_priv*,int ,int ) ;

__attribute__((used)) static int
_il_apm_stop_master(struct il_priv *il)
{
 int ret = 0;


 _il_set_bit(il, CSR_RESET, CSR_RESET_REG_FLAG_STOP_MASTER);

 ret =
     _il_poll_bit(il, CSR_RESET, CSR_RESET_REG_FLAG_MASTER_DISABLED,
    CSR_RESET_REG_FLAG_MASTER_DISABLED, 100);
 if (ret < 0)
  IL_WARN("Master Disable Timed Out, 100 usec\n");

 D_INFO("stop master\n");

 return ret;
}
