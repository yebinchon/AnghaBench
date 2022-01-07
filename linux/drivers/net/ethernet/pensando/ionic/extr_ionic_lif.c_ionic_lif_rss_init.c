
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ionic_lif {int rss_types; int nxqs; int * rss_ind_tbl; TYPE_4__* ionic; } ;
struct TYPE_5__ {int rss_ind_tbl_sz; } ;
struct TYPE_6__ {TYPE_1__ eth; } ;
struct TYPE_7__ {TYPE_2__ lif; } ;
struct TYPE_8__ {TYPE_3__ ident; } ;


 int IONIC_RSS_HASH_KEY_SIZE ;
 int IONIC_RSS_TYPE_IPV4 ;
 int IONIC_RSS_TYPE_IPV4_TCP ;
 int IONIC_RSS_TYPE_IPV4_UDP ;
 int IONIC_RSS_TYPE_IPV6 ;
 int IONIC_RSS_TYPE_IPV6_TCP ;
 int IONIC_RSS_TYPE_IPV6_UDP ;
 int ethtool_rxfh_indir_default (unsigned int,int ) ;
 int ionic_lif_rss_config (struct ionic_lif*,int,int *,int *) ;
 unsigned int le16_to_cpu (int ) ;
 int netdev_rss_key_fill (int *,int) ;

__attribute__((used)) static int ionic_lif_rss_init(struct ionic_lif *lif)
{
 u8 rss_key[IONIC_RSS_HASH_KEY_SIZE];
 unsigned int tbl_sz;
 unsigned int i;

 netdev_rss_key_fill(rss_key, IONIC_RSS_HASH_KEY_SIZE);

 lif->rss_types = IONIC_RSS_TYPE_IPV4 |
    IONIC_RSS_TYPE_IPV4_TCP |
    IONIC_RSS_TYPE_IPV4_UDP |
    IONIC_RSS_TYPE_IPV6 |
    IONIC_RSS_TYPE_IPV6_TCP |
    IONIC_RSS_TYPE_IPV6_UDP;


 tbl_sz = le16_to_cpu(lif->ionic->ident.lif.eth.rss_ind_tbl_sz);
 for (i = 0; i < tbl_sz; i++)
  lif->rss_ind_tbl[i] = ethtool_rxfh_indir_default(i, lif->nxqs);

 return ionic_lif_rss_config(lif, lif->rss_types, rss_key, ((void*)0));
}
