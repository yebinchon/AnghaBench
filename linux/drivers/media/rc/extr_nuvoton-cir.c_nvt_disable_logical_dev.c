
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int dummy; } ;


 int CR_LOGICAL_DEV_EN ;
 int LOGICAL_DEV_DISABLE ;
 int nvt_cr_write (struct nvt_dev*,int ,int ) ;
 int nvt_efm_disable (struct nvt_dev*) ;
 int nvt_efm_enable (struct nvt_dev*) ;
 int nvt_select_logical_dev (struct nvt_dev*,int ) ;

__attribute__((used)) static inline void nvt_disable_logical_dev(struct nvt_dev *nvt, u8 ldev)
{
 nvt_efm_enable(nvt);
 nvt_select_logical_dev(nvt, ldev);
 nvt_cr_write(nvt, LOGICAL_DEV_DISABLE, CR_LOGICAL_DEV_EN);
 nvt_efm_disable(nvt);
}
