
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_chip {scalar_t__ chip; } ;


 scalar_t__ CY_CC_43012_CHIP_ID ;

__attribute__((used)) static bool brcmf_chip_is_ulp(struct brcmf_chip *ci)
{
 if (ci->chip == CY_CC_43012_CHIP_ID)
  return 1;
 else
  return 0;
}
