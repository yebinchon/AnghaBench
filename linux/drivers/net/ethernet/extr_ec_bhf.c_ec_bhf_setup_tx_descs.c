
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sent; } ;
struct tx_desc {TYPE_1__ header; } ;
struct TYPE_4__ {int len; scalar_t__ buf; } ;
struct ec_bhf_priv {int tx_dcount; struct tx_desc* tx_descs; scalar_t__ tx_dnext; TYPE_2__ tx_buf; } ;


 int TX_HDR_SENT ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void ec_bhf_setup_tx_descs(struct ec_bhf_priv *priv)
{
 int i = 0;

 priv->tx_dcount = priv->tx_buf.len / sizeof(struct tx_desc);
 priv->tx_descs = (struct tx_desc *)priv->tx_buf.buf;
 priv->tx_dnext = 0;

 for (i = 0; i < priv->tx_dcount; i++)
  priv->tx_descs[i].header.sent = cpu_to_le32(TX_HDR_SENT);
}
