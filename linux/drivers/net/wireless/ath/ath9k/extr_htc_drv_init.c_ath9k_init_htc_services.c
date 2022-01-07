
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ath9k_htc_priv {int dev; TYPE_1__* htc; int data_vo_ep; int data_vi_ep; int data_bk_ep; int data_be_ep; int mgmt_ep; int uapsd_ep; int cab_ep; int beacon_ep; int wmi_cmd_ep; int wmi; } ;
struct TYPE_3__ {int credits; } ;


 scalar_t__ IS_AR7010_DEVICE (int ) ;
 int WMI_BEACON_SVC ;
 int WMI_CAB_SVC ;
 int WMI_DATA_BE_SVC ;
 int WMI_DATA_BK_SVC ;
 int WMI_DATA_VI_SVC ;
 int WMI_DATA_VO_SVC ;
 int WMI_MGMT_SVC ;
 int WMI_UAPSD_SVC ;
 int ath9k_htc_beaconep ;
 int ath9k_htc_connect_svc (struct ath9k_htc_priv*,int ,int ,int *) ;
 int ath9k_htc_txep ;
 int ath9k_wmi_connect (TYPE_1__*,int ,int *) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int) ;
 int htc_init (TYPE_1__*) ;

__attribute__((used)) static int ath9k_init_htc_services(struct ath9k_htc_priv *priv, u16 devid,
       u32 drv_info)
{
 int ret;


 ret = ath9k_wmi_connect(priv->htc, priv->wmi, &priv->wmi_cmd_ep);
 if (ret)
  goto err;


 ret = ath9k_htc_connect_svc(priv, WMI_BEACON_SVC, ath9k_htc_beaconep,
        &priv->beacon_ep);
 if (ret)
  goto err;


 ret = ath9k_htc_connect_svc(priv, WMI_CAB_SVC, ath9k_htc_txep,
        &priv->cab_ep);
 if (ret)
  goto err;



 ret = ath9k_htc_connect_svc(priv, WMI_UAPSD_SVC, ath9k_htc_txep,
        &priv->uapsd_ep);
 if (ret)
  goto err;


 ret = ath9k_htc_connect_svc(priv, WMI_MGMT_SVC, ath9k_htc_txep,
        &priv->mgmt_ep);
 if (ret)
  goto err;


 ret = ath9k_htc_connect_svc(priv, WMI_DATA_BE_SVC, ath9k_htc_txep,
        &priv->data_be_ep);
 if (ret)
  goto err;


 ret = ath9k_htc_connect_svc(priv, WMI_DATA_BK_SVC, ath9k_htc_txep,
        &priv->data_bk_ep);
 if (ret)
  goto err;


 ret = ath9k_htc_connect_svc(priv, WMI_DATA_VI_SVC, ath9k_htc_txep,
        &priv->data_vi_ep);
 if (ret)
  goto err;


 ret = ath9k_htc_connect_svc(priv, WMI_DATA_VO_SVC, ath9k_htc_txep,
        &priv->data_vo_ep);
 if (ret)
  goto err;







 if (IS_AR7010_DEVICE(drv_info))
  priv->htc->credits = 45;
 else
  priv->htc->credits = 33;

 ret = htc_init(priv->htc);
 if (ret)
  goto err;

 dev_info(priv->dev, "ath9k_htc: HTC initialized with %d credits\n",
   priv->htc->credits);

 return 0;

err:
 dev_err(priv->dev, "ath9k_htc: Unable to initialize HTC services\n");
 return ret;
}
