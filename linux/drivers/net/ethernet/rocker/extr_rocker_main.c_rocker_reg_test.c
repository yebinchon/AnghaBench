
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;


 int EIO ;
 int TEST_REG ;
 int TEST_REG64 ;
 int dev_err (int *,char*,int,int) ;
 int prandom_u32 () ;
 int rocker_read32 (struct rocker const*,int ) ;
 int rocker_read64 (struct rocker const*,int ) ;
 int rocker_write32 (struct rocker const*,int ,int) ;
 int rocker_write64 (struct rocker const*,int ,int) ;

__attribute__((used)) static int rocker_reg_test(const struct rocker *rocker)
{
 const struct pci_dev *pdev = rocker->pdev;
 u64 test_reg;
 u64 rnd;

 rnd = prandom_u32();
 rnd >>= 1;
 rocker_write32(rocker, TEST_REG, rnd);
 test_reg = rocker_read32(rocker, TEST_REG);
 if (test_reg != rnd * 2) {
  dev_err(&pdev->dev, "unexpected 32bit register value %08llx, expected %08llx\n",
   test_reg, rnd * 2);
  return -EIO;
 }

 rnd = prandom_u32();
 rnd <<= 31;
 rnd |= prandom_u32();
 rocker_write64(rocker, TEST_REG64, rnd);
 test_reg = rocker_read64(rocker, TEST_REG64);
 if (test_reg != rnd * 2) {
  dev_err(&pdev->dev, "unexpected 64bit register value %16llx, expected %16llx\n",
   test_reg, rnd * 2);
  return -EIO;
 }

 return 0;
}
