
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct htc_target {int dummy; } ;
struct ath6kl_htc_credit_info {int dummy; } ;


 int WMI_CONTROL_SVC ;
 int WMI_DATA_BE_SVC ;
 int WMI_DATA_BK_SVC ;
 int WMI_DATA_VI_SVC ;
 int WMI_DATA_VO_SVC ;
 int ath6kl_htc_set_credit_dist (struct htc_target*,struct ath6kl_htc_credit_info*,int *,int) ;
 int memset (struct ath6kl_htc_credit_info*,int ,int) ;

__attribute__((used)) static int ath6kl_htc_mbox_credit_setup(struct htc_target *htc_target,
          struct ath6kl_htc_credit_info *cred_info)
{
 u16 servicepriority[5];

 memset(cred_info, 0, sizeof(struct ath6kl_htc_credit_info));

 servicepriority[0] = WMI_CONTROL_SVC;
 servicepriority[1] = WMI_DATA_VO_SVC;
 servicepriority[2] = WMI_DATA_VI_SVC;
 servicepriority[3] = WMI_DATA_BE_SVC;
 servicepriority[4] = WMI_DATA_BK_SVC;


 ath6kl_htc_set_credit_dist(htc_target, cred_info, servicepriority, 5);

 return 0;
}
