
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ce_pipe_config {void* nbytes_max; void* pipedir; } ;
struct ce_attr {scalar_t__ dest_nentries; scalar_t__ src_sz_max; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {void* pipenum; } ;


 int PIPEDIR_OUT ;
 void* __cpu_to_le32 (int) ;
 struct ce_attr* host_ce_config_wlan ;
 struct ce_pipe_config* target_ce_config_wlan ;
 TYPE_1__* target_service_to_ce_map_wlan ;

__attribute__((used)) static void ath10k_pci_override_ce_config(struct ath10k *ar)
{
 struct ce_attr *attr;
 struct ce_pipe_config *config;






 attr = &host_ce_config_wlan[5];
 attr->src_sz_max = 0;
 attr->dest_nentries = 0;


 config = &target_ce_config_wlan[5];
 config->pipedir = __cpu_to_le32(PIPEDIR_OUT);
 config->nbytes_max = __cpu_to_le32(2048);


 target_service_to_ce_map_wlan[15].pipenum = __cpu_to_le32(1);
}
