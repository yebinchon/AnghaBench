
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_wmm_params_arg {int no_ack; int acm; int txop; int aifs; int cwmax; int cwmin; } ;
struct wmi_wmm_params {void* no_ack; void* acm; void* txop; void* aifs; void* cwmax; void* cwmin; } ;


 void* __cpu_to_le32 (int ) ;

void ath10k_wmi_set_wmm_param(struct wmi_wmm_params *params,
         const struct wmi_wmm_params_arg *arg)
{
 params->cwmin = __cpu_to_le32(arg->cwmin);
 params->cwmax = __cpu_to_le32(arg->cwmax);
 params->aifs = __cpu_to_le32(arg->aifs);
 params->txop = __cpu_to_le32(arg->txop);
 params->acm = __cpu_to_le32(arg->acm);
 params->no_ack = __cpu_to_le32(arg->no_ack);
}
