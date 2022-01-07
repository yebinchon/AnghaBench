
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ia_rows; } ;
struct ath_hw {int analogBank6Data; int dev; TYPE_1__ iniBank6; } ;


 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kzalloc (int ,int,int ) ;

__attribute__((used)) static int ar5008_hw_rf_alloc_ext_banks(struct ath_hw *ah)
{
 int size = ah->iniBank6.ia_rows * sizeof(u32);

 if (AR_SREV_9280_20_OR_LATER(ah))
     return 0;

 ah->analogBank6Data = devm_kzalloc(ah->dev, size, GFP_KERNEL);
 if (!ah->analogBank6Data)
  return -ENOMEM;

 return 0;
}
