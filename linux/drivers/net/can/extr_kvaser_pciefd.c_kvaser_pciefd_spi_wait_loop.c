
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvaser_pciefd {scalar_t__ reg_base; } ;


 scalar_t__ KVASER_PCIEFD_SPI_STATUS_REG ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int) ;

__attribute__((used)) static int kvaser_pciefd_spi_wait_loop(struct kvaser_pciefd *pcie, int msk)
{
 u32 res;
 int ret;

 ret = readl_poll_timeout(pcie->reg_base + KVASER_PCIEFD_SPI_STATUS_REG,
     res, res & msk, 0, 10);

 return ret;
}
