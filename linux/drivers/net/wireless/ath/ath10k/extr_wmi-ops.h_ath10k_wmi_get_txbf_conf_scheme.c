
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ wmi; } ;
typedef enum wmi_txbf_conf { ____Placeholder_wmi_txbf_conf } wmi_txbf_conf ;
struct TYPE_3__ {int (* get_txbf_conf_scheme ) (struct ath10k*) ;} ;


 int WMI_TXBF_CONF_UNSUPPORTED ;
 int stub1 (struct ath10k*) ;

__attribute__((used)) static inline enum wmi_txbf_conf
ath10k_wmi_get_txbf_conf_scheme(struct ath10k *ar)
{
 if (!ar->wmi.ops->get_txbf_conf_scheme)
  return WMI_TXBF_CONF_UNSUPPORTED;

 return ar->wmi.ops->get_txbf_conf_scheme(ar);
}
