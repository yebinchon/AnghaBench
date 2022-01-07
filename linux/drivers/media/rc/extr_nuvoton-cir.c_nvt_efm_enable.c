
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int cr_efir; } ;


 int EBUSY ;
 int EFER_EFM_ENABLE ;
 int NVT_DRIVER_NAME ;
 int outb (int ,int ) ;
 int request_muxed_region (int ,int,int ) ;

__attribute__((used)) static inline int nvt_efm_enable(struct nvt_dev *nvt)
{
 if (!request_muxed_region(nvt->cr_efir, 2, NVT_DRIVER_NAME))
  return -EBUSY;


 outb(EFER_EFM_ENABLE, nvt->cr_efir);
 outb(EFER_EFM_ENABLE, nvt->cr_efir);

 return 0;
}
