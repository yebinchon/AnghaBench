
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct device* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int cgrid; } ;
struct TYPE_4__ {TYPE_3__ cgr; } ;
struct dpaa_priv {TYPE_1__ cgr_data; TYPE_3__ ingress_cgr; int dpaa_fq_list; } ;
struct device {int dummy; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int dpaa_bps_free (struct dpaa_priv*) ;
 int dpaa_eth_sysfs_remove (struct device*) ;
 int dpaa_fq_free (struct device*,int *) ;
 int dpaa_napi_del (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 struct dpaa_priv* netdev_priv (struct net_device*) ;
 int qman_delete_cgr_safe (TYPE_3__*) ;
 int qman_release_cgrid (int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int dpaa_remove(struct platform_device *pdev)
{
 struct net_device *net_dev;
 struct dpaa_priv *priv;
 struct device *dev;
 int err;

 dev = pdev->dev.parent;
 net_dev = dev_get_drvdata(dev);

 priv = netdev_priv(net_dev);

 dpaa_eth_sysfs_remove(dev);

 dev_set_drvdata(dev, ((void*)0));
 unregister_netdev(net_dev);

 err = dpaa_fq_free(dev, &priv->dpaa_fq_list);

 qman_delete_cgr_safe(&priv->ingress_cgr);
 qman_release_cgrid(priv->ingress_cgr.cgrid);
 qman_delete_cgr_safe(&priv->cgr_data.cgr);
 qman_release_cgrid(priv->cgr_data.cgr.cgrid);

 dpaa_napi_del(net_dev);

 dpaa_bps_free(priv);

 free_netdev(net_dev);

 return err;
}
