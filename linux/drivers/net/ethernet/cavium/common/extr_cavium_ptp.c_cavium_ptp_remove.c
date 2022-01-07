
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dummy; } ;
struct cavium_ptp {scalar_t__ reg_base; int ptp_clock; } ;


 scalar_t__ IS_ERR_OR_NULL (struct cavium_ptp*) ;
 scalar_t__ PTP_CLOCK_CFG ;
 int PTP_CLOCK_CFG_PTP_EN ;
 struct cavium_ptp* pci_get_drvdata (struct pci_dev*) ;
 int ptp_clock_unregister (int ) ;
 int readq (scalar_t__) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void cavium_ptp_remove(struct pci_dev *pdev)
{
 struct cavium_ptp *clock = pci_get_drvdata(pdev);
 u64 clock_cfg;

 if (IS_ERR_OR_NULL(clock))
  return;

 ptp_clock_unregister(clock->ptp_clock);

 clock_cfg = readq(clock->reg_base + PTP_CLOCK_CFG);
 clock_cfg &= ~PTP_CLOCK_CFG_PTP_EN;
 writeq(clock_cfg, clock->reg_base + PTP_CLOCK_CFG);
}
