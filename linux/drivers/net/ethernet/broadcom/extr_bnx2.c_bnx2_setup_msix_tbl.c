
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2 {int dummy; } ;


 int BNX2_MSIX_PBA_ADDR ;
 int BNX2_MSIX_TABLE_ADDR ;
 int BNX2_PCI_GRC_WINDOW2_ADDR ;
 int BNX2_PCI_GRC_WINDOW3_ADDR ;
 int BNX2_PCI_GRC_WINDOW_ADDR ;
 int BNX2_PCI_GRC_WINDOW_ADDR_SEP_WIN ;
 int BNX2_WR (struct bnx2*,int ,int ) ;

__attribute__((used)) static void
bnx2_setup_msix_tbl(struct bnx2 *bp)
{
 BNX2_WR(bp, BNX2_PCI_GRC_WINDOW_ADDR, BNX2_PCI_GRC_WINDOW_ADDR_SEP_WIN);

 BNX2_WR(bp, BNX2_PCI_GRC_WINDOW2_ADDR, BNX2_MSIX_TABLE_ADDR);
 BNX2_WR(bp, BNX2_PCI_GRC_WINDOW3_ADDR, BNX2_MSIX_PBA_ADDR);
}
