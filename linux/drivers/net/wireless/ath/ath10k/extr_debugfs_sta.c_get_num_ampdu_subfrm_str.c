
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ath10k_ampdu_subfrm_num { ____Placeholder_ath10k_ampdu_subfrm_num } ath10k_ampdu_subfrm_num ;
__attribute__((used)) static char *get_num_ampdu_subfrm_str(enum ath10k_ampdu_subfrm_num i)
{
 switch (i) {
 case 135:
  return "upto 10";
 case 134:
  return "11-20";
 case 133:
  return "21-30";
 case 132:
  return "31-40";
 case 131:
  return "41-50";
 case 130:
  return "51-60";
 case 128:
  return ">60";
 case 129:
  return "0";
 }

 return "0";
}
