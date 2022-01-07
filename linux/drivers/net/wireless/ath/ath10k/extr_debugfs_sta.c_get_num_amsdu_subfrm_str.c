
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ath10k_amsdu_subfrm_num { ____Placeholder_ath10k_amsdu_subfrm_num } ath10k_amsdu_subfrm_num ;
__attribute__((used)) static char *get_num_amsdu_subfrm_str(enum ath10k_amsdu_subfrm_num i)
{
 switch (i) {
 case 133:
  return "1";
 case 132:
  return "2";
 case 131:
  return "3";
 case 130:
  return "4";
 case 128:
  return ">4";
 case 129:
  return "0";
 }

 return "0";
}
