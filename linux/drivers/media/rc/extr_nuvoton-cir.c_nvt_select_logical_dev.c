
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int dummy; } ;


 int CR_LOGICAL_DEV_SEL ;
 int nvt_cr_write (struct nvt_dev*,int ,int ) ;

__attribute__((used)) static inline void nvt_select_logical_dev(struct nvt_dev *nvt, u8 ldev)
{
 nvt_cr_write(nvt, ldev, CR_LOGICAL_DEV_SEL);
}
