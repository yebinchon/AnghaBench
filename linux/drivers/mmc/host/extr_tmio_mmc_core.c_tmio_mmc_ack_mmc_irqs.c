
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmio_mmc_host {int dummy; } ;


 int CTL_STATUS ;
 int sd_ctrl_write32_as_16_and_16 (struct tmio_mmc_host*,int ,int ) ;

__attribute__((used)) static void tmio_mmc_ack_mmc_irqs(struct tmio_mmc_host *host, u32 i)
{
 sd_ctrl_write32_as_16_and_16(host, CTL_STATUS, ~i);
}
