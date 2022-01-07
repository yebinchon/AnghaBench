
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ar9170 {TYPE_1__* hw; } ;
typedef int __le32 ;
struct TYPE_2__ {int wiphy; } ;


 int CARL9170_CMD_RREG ;
 int carl9170_exec_cmd (struct ar9170*,int ,int,int *,int,int *) ;
 int cpu_to_le32 (int const) ;
 int le32_to_cpu (int ) ;
 scalar_t__ net_ratelimit () ;
 int wiphy_err (int ,char*,int) ;

int carl9170_read_mreg(struct ar9170 *ar, const int nregs,
         const u32 *regs, u32 *out)
{
 int i, err;
 __le32 *offs, *res;


 offs = (__le32 *)out;
 for (i = 0; i < nregs; i++)
  offs[i] = cpu_to_le32(regs[i]);


 res = (__le32 *)out;

 err = carl9170_exec_cmd(ar, CARL9170_CMD_RREG,
    4 * nregs, (u8 *)offs,
    4 * nregs, (u8 *)res);
 if (err) {
  if (net_ratelimit()) {
   wiphy_err(ar->hw->wiphy, "reading regs failed (%d)\n",
      err);
  }
  return err;
 }


 for (i = 0; i < nregs; i++)
  out[i] = le32_to_cpu(res[i]);

 return 0;
}
