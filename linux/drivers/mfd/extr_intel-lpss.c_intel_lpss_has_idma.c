
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lpss {int caps; } ;


 int LPSS_PRIV_CAPS_NO_IDMA ;

__attribute__((used)) static bool intel_lpss_has_idma(const struct intel_lpss *lpss)
{
 return (lpss->caps & LPSS_PRIV_CAPS_NO_IDMA) == 0;
}
