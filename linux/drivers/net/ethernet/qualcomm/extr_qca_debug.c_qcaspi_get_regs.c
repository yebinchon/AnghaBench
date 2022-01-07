
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef size_t u16 ;
struct qcaspi {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int QCASPI_MAX_REGS ;
 int memset (size_t*,int ,int) ;
 struct qcaspi* netdev_priv (struct net_device*) ;
 int qcaspi_read_register (struct qcaspi*,int,size_t*) ;
 int* qcaspi_spi_regs ;

__attribute__((used)) static void
qcaspi_get_regs(struct net_device *dev, struct ethtool_regs *regs, void *p)
{
 struct qcaspi *qca = netdev_priv(dev);
 u32 *regs_buff = p;
 unsigned int i;

 regs->version = 1;
 memset(regs_buff, 0, sizeof(u32) * QCASPI_MAX_REGS);

 for (i = 0; i < ARRAY_SIZE(qcaspi_spi_regs); i++) {
  u16 offset, value;

  qcaspi_read_register(qca, qcaspi_spi_regs[i], &value);
  offset = qcaspi_spi_regs[i] >> 8;
  regs_buff[offset] = value;
 }
}
