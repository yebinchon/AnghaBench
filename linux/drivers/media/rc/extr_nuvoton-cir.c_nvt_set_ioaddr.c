
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int dummy; } ;


 int CR_CIR_BASE_ADDR_HI ;
 int CR_CIR_BASE_ADDR_LO ;
 unsigned long nvt_cr_read (struct nvt_dev*,int ) ;
 int nvt_cr_write (struct nvt_dev*,unsigned long,int ) ;

__attribute__((used)) static void nvt_set_ioaddr(struct nvt_dev *nvt, unsigned long *ioaddr)
{
 unsigned long old_addr;

 old_addr = nvt_cr_read(nvt, CR_CIR_BASE_ADDR_HI) << 8;
 old_addr |= nvt_cr_read(nvt, CR_CIR_BASE_ADDR_LO);

 if (old_addr)
  *ioaddr = old_addr;
 else {
  nvt_cr_write(nvt, *ioaddr >> 8, CR_CIR_BASE_ADDR_HI);
  nvt_cr_write(nvt, *ioaddr & 0xff, CR_CIR_BASE_ADDR_LO);
 }
}
