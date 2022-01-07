
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {scalar_t__ chip_ver; } ;


 scalar_t__ NVT_W83667HG ;

__attribute__((used)) static inline bool is_w83667hg(struct nvt_dev *nvt)
{
 return nvt->chip_ver == NVT_W83667HG;
}
