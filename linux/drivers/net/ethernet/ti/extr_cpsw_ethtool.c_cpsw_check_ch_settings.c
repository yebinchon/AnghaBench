
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethtool_channels {scalar_t__ rx_count; scalar_t__ tx_count; scalar_t__ combined_count; } ;
struct TYPE_2__ {scalar_t__ channels; } ;
struct cpsw_common {TYPE_1__ data; int dev; scalar_t__ quirk_irq; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int cpsw_check_ch_settings(struct cpsw_common *cpsw,
      struct ethtool_channels *ch)
{
 if (cpsw->quirk_irq) {
  dev_err(cpsw->dev, "Maximum one tx/rx queue is allowed");
  return -EOPNOTSUPP;
 }

 if (ch->combined_count)
  return -EINVAL;


 if (!ch->rx_count || !ch->tx_count)
  return -EINVAL;

 if (ch->rx_count > cpsw->data.channels ||
     ch->tx_count > cpsw->data.channels)
  return -EINVAL;

 return 0;
}
