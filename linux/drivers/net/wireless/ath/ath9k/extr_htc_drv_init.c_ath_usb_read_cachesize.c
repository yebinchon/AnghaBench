
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_common {int dummy; } ;


 int L1_CACHE_BYTES ;

__attribute__((used)) static void ath_usb_read_cachesize(struct ath_common *common, int *csz)
{
 *csz = L1_CACHE_BYTES >> 2;
}
