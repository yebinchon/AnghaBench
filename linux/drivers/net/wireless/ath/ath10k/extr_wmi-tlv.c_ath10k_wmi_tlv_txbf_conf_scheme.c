
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;
typedef enum wmi_txbf_conf { ____Placeholder_wmi_txbf_conf } wmi_txbf_conf ;


 int WMI_TXBF_CONF_AFTER_ASSOC ;

__attribute__((used)) static enum wmi_txbf_conf ath10k_wmi_tlv_txbf_conf_scheme(struct ath10k *ar)
{
 return WMI_TXBF_CONF_AFTER_ASSOC;
}
