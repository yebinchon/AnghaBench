
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long rx_split_hdr_pkt_n; } ;
struct stmmac_priv {TYPE_2__ xstats; TYPE_1__* dev; int sph; } ;
struct stmmac_packet_attrs {int tcp; int dst; } ;
struct TYPE_3__ {int dev_addr; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int __stmmac_test_loopback (struct stmmac_priv*,struct stmmac_packet_attrs*) ;

__attribute__((used)) static int stmmac_test_sph(struct stmmac_priv *priv)
{
 unsigned long cnt_end, cnt_start = priv->xstats.rx_split_hdr_pkt_n;
 struct stmmac_packet_attrs attr = { };
 int ret;

 if (!priv->sph)
  return -EOPNOTSUPP;


 attr.dst = priv->dev->dev_addr;
 attr.tcp = 0;

 ret = __stmmac_test_loopback(priv, &attr);
 if (ret)
  return ret;

 cnt_end = priv->xstats.rx_split_hdr_pkt_n;
 if (cnt_end <= cnt_start)
  return -EINVAL;


 cnt_start = cnt_end;

 attr.dst = priv->dev->dev_addr;
 attr.tcp = 1;

 ret = __stmmac_test_loopback(priv, &attr);
 if (ret)
  return ret;

 cnt_end = priv->xstats.rx_split_hdr_pkt_n;
 if (cnt_end <= cnt_start)
  return -EINVAL;

 return 0;
}
