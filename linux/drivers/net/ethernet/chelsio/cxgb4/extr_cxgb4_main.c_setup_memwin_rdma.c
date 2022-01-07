
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int start; scalar_t__ size; } ;
struct TYPE_4__ {TYPE_1__ ocq; } ;
struct adapter {TYPE_2__ vres; int pdev; } ;


 int BIR_V (int) ;
 scalar_t__ OCQ_WIN_OFFSET (int ,TYPE_2__*) ;
 int PCIE_MEM_ACCESS_BASE_WIN_A ;
 int PCIE_MEM_ACCESS_OFFSET_A ;
 int PCIE_MEM_ACCESS_REG (int ,int) ;
 int PCI_BASE_ADDRESS_2 ;
 int PCI_BASE_ADDRESS_MEM_MASK ;
 int WINDOW_V (int ) ;
 int ilog2 (unsigned int) ;
 int roundup_pow_of_two (scalar_t__) ;
 int t4_read_pcie_cfg4 (struct adapter*,int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void setup_memwin_rdma(struct adapter *adap)
{
 if (adap->vres.ocq.size) {
  u32 start;
  unsigned int sz_kb;

  start = t4_read_pcie_cfg4(adap, PCI_BASE_ADDRESS_2);
  start &= PCI_BASE_ADDRESS_MEM_MASK;
  start += OCQ_WIN_OFFSET(adap->pdev, &adap->vres);
  sz_kb = roundup_pow_of_two(adap->vres.ocq.size) >> 10;
  t4_write_reg(adap,
        PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_BASE_WIN_A, 3),
        start | BIR_V(1) | WINDOW_V(ilog2(sz_kb)));
  t4_write_reg(adap,
        PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_OFFSET_A, 3),
        adap->vres.ocq.start);
  t4_read_reg(adap,
       PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_OFFSET_A, 3));
 }
}
