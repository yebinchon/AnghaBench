
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * peer_flags; int * ops; int * pdev_param; int * vdev_param; int * cmd; } ;
struct ath10k {TYPE_1__ wmi; } ;


 int wmi_tlv_cmd_map ;
 int wmi_tlv_ops ;
 int wmi_tlv_pdev_param_map ;
 int wmi_tlv_peer_flags_map ;
 int wmi_tlv_vdev_param_map ;

void ath10k_wmi_tlv_attach(struct ath10k *ar)
{
 ar->wmi.cmd = &wmi_tlv_cmd_map;
 ar->wmi.vdev_param = &wmi_tlv_vdev_param_map;
 ar->wmi.pdev_param = &wmi_tlv_pdev_param_map;
 ar->wmi.ops = &wmi_tlv_ops;
 ar->wmi.peer_flags = &wmi_tlv_peer_flags_map;
}
