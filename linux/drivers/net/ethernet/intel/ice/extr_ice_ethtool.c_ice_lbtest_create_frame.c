
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int* devm_kzalloc (int *,int ,int ) ;
 int memset (int*,int,int ) ;

__attribute__((used)) static int ice_lbtest_create_frame(struct ice_pf *pf, u8 **ret_data, u16 size)
{
 u8 *data;

 if (!pf)
  return -EINVAL;

 data = devm_kzalloc(&pf->pdev->dev, size, GFP_KERNEL);
 if (!data)
  return -ENOMEM;




 memset(data, 0xFF, size);
 data[32] = 0xDE;
 data[42] = 0xAD;
 data[44] = 0xBE;
 data[46] = 0xEF;

 *ret_data = data;

 return 0;
}
