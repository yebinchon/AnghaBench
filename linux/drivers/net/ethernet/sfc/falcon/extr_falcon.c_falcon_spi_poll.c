
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
typedef int ef4_oword_t ;


 int EBUSY ;
 scalar_t__ EF4_OWORD_FIELD (int ,int ) ;
 int FRF_AB_EE_SPI_HCMD_CMD_EN ;
 int FR_AB_EE_SPI_HCMD ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;

__attribute__((used)) static int falcon_spi_poll(struct ef4_nic *efx)
{
 ef4_oword_t reg;
 ef4_reado(efx, &reg, FR_AB_EE_SPI_HCMD);
 return EF4_OWORD_FIELD(reg, FRF_AB_EE_SPI_HCMD_CMD_EN) ? -EBUSY : 0;
}
