
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ const u32 ;
struct ar9170 {TYPE_1__* hw; } ;
struct TYPE_2__ {int wiphy; } ;


 int CARL9170_CMD_ECHO ;
 int EINVAL ;
 int carl9170_exec_cmd (struct ar9170*,int ,int,int *,int,int *) ;
 int wiphy_info (int ,char*,scalar_t__ const,scalar_t__ const) ;

int carl9170_echo_test(struct ar9170 *ar, const u32 v)
{
 u32 echores;
 int err;

 err = carl9170_exec_cmd(ar, CARL9170_CMD_ECHO,
    4, (u8 *)&v,
    4, (u8 *)&echores);
 if (err)
  return err;

 if (v != echores) {
  wiphy_info(ar->hw->wiphy, "wrong echo %x != %x", v, echores);
  return -EINVAL;
 }

 return 0;
}
