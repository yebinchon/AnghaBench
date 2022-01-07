
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int mcdi_max_ver; } ;


 int EINVAL ;
 int EMSGSIZE ;
 size_t MCDI_CTL_SDU_LEN_MAX_V1 ;
 size_t MCDI_CTL_SDU_LEN_MAX_V2 ;
 unsigned int MC_CMD_CMD_SPACE_ESCAPE_7 ;

__attribute__((used)) static int
efx_mcdi_check_supported(struct efx_nic *efx, unsigned int cmd, size_t inlen)
{
 if (efx->type->mcdi_max_ver < 0 ||
      (efx->type->mcdi_max_ver < 2 &&
       cmd > MC_CMD_CMD_SPACE_ESCAPE_7))
  return -EINVAL;

 if (inlen > MCDI_CTL_SDU_LEN_MAX_V2 ||
     (efx->type->mcdi_max_ver < 2 &&
      inlen > MCDI_CTL_SDU_LEN_MAX_V1))
  return -EMSGSIZE;

 return 0;
}
