
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_rx_filter {int by_hash; int by_id; } ;
struct ionic_lif {TYPE_1__* ionic; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int devm_kfree (struct device*,struct ionic_rx_filter*) ;
 int hlist_del (int *) ;

void ionic_rx_filter_free(struct ionic_lif *lif, struct ionic_rx_filter *f)
{
 struct device *dev = lif->ionic->dev;

 hlist_del(&f->by_id);
 hlist_del(&f->by_hash);
 devm_kfree(dev, f);
}
