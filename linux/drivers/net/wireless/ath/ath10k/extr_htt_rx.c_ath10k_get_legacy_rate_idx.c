
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath10k {int dummy; } ;
typedef int s8 ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int ath10k_warn (struct ath10k*,char*,int) ;

__attribute__((used)) static inline s8 ath10k_get_legacy_rate_idx(struct ath10k *ar, u8 rate)
{
 static const u8 legacy_rates[] = {1, 2, 5, 11, 6, 9, 12,
       18, 24, 36, 48, 54};
 int i;

 for (i = 0; i < ARRAY_SIZE(legacy_rates); i++) {
  if (rate == legacy_rates[i])
   return i;
 }

 ath10k_warn(ar, "Invalid legacy rate %hhd peer stats", rate);
 return -EINVAL;
}
