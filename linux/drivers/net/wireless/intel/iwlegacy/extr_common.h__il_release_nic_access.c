
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ;
 int _il_clear_bit (struct il_priv*,int ,int ) ;

__attribute__((used)) static inline void
_il_release_nic_access(struct il_priv *il)
{
 _il_clear_bit(il, CSR_GP_CNTRL, CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);
}
