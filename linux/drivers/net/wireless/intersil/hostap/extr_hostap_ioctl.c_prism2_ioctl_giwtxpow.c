
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; int fixed; int value; int flags; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {scalar_t__ txpower_type; int txpower; TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_3__ {scalar_t__ (* cmd ) (struct net_device*,int ,int ,int *,int *) ;} ;


 int EOPNOTSUPP ;
 int HFA384X_CMDCODE_READMIF ;
 int HFA386X_CR_MANUAL_TX_POWER ;
 int IW_TXPOW_DBM ;
 scalar_t__ PRISM2_TXPOWER_AUTO ;
 scalar_t__ PRISM2_TXPOWER_FIXED ;
 scalar_t__ PRISM2_TXPOWER_OFF ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int printk (char*,scalar_t__) ;
 int prism2_txpower_hfa386x_to_dBm (int ) ;
 scalar_t__ stub1 (struct net_device*,int ,int ,int *,int *) ;

__attribute__((used)) static int prism2_ioctl_giwtxpow(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *rrq, char *extra)
{
 return -EOPNOTSUPP;

}
