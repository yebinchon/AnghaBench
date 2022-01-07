
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int ath10k_warn (struct ath10k*,char*,char const*,int) ;

__attribute__((used)) static void ath10k_check_chain_mask(struct ath10k *ar, u32 cm, const char *dbg)
{




 if (cm == 15 || cm == 7 || cm == 3 || cm == 1 || cm == 0)
  return;

 ath10k_warn(ar, "mac %s antenna chainmask may be invalid: 0x%x.  Suggested values: 15, 7, 3, 1 or 0.\n",
      dbg, cm);
}
