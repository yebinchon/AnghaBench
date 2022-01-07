
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct list_head {int dummy; } ;
struct fm_port_fqs {struct dpaa_fq* tx_defq; struct dpaa_fq* tx_errq; struct dpaa_fq* rx_pcdq; struct dpaa_fq* rx_defq; struct dpaa_fq* rx_errq; } ;
struct dpaa_fq {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 int DPAA_ETH_PCD_RXQ_NUM ;
 int DPAA_ETH_TXQ_NUM ;
 int ENOMEM ;
 int FQ_TYPE_RX_DEFAULT ;
 int FQ_TYPE_RX_ERROR ;
 int FQ_TYPE_RX_PCD ;
 int FQ_TYPE_TX ;
 int FQ_TYPE_TX_CONFIRM ;
 int FQ_TYPE_TX_CONF_MQ ;
 int FQ_TYPE_TX_ERROR ;
 int dev_err (struct device*,char*) ;
 struct dpaa_fq* dpaa_fq_alloc (struct device*,scalar_t__,int,struct list_head*,int ) ;
 scalar_t__ qman_alloc_fqid_range (scalar_t__*,int) ;
 int qman_release_fqid (scalar_t__) ;

__attribute__((used)) static int dpaa_alloc_all_fqs(struct device *dev, struct list_head *list,
         struct fm_port_fqs *port_fqs)
{
 struct dpaa_fq *dpaa_fq;
 u32 fq_base, fq_base_aligned, i;

 dpaa_fq = dpaa_fq_alloc(dev, 0, 1, list, FQ_TYPE_RX_ERROR);
 if (!dpaa_fq)
  goto fq_alloc_failed;

 port_fqs->rx_errq = &dpaa_fq[0];

 dpaa_fq = dpaa_fq_alloc(dev, 0, 1, list, FQ_TYPE_RX_DEFAULT);
 if (!dpaa_fq)
  goto fq_alloc_failed;

 port_fqs->rx_defq = &dpaa_fq[0];


 if (qman_alloc_fqid_range(&fq_base, 2 * DPAA_ETH_PCD_RXQ_NUM))
  goto fq_alloc_failed;

 fq_base_aligned = ALIGN(fq_base, DPAA_ETH_PCD_RXQ_NUM);

 for (i = fq_base; i < fq_base_aligned; i++)
  qman_release_fqid(i);

 for (i = fq_base_aligned + DPAA_ETH_PCD_RXQ_NUM;
      i < (fq_base + 2 * DPAA_ETH_PCD_RXQ_NUM); i++)
  qman_release_fqid(i);

 dpaa_fq = dpaa_fq_alloc(dev, fq_base_aligned, DPAA_ETH_PCD_RXQ_NUM,
    list, FQ_TYPE_RX_PCD);
 if (!dpaa_fq)
  goto fq_alloc_failed;

 port_fqs->rx_pcdq = &dpaa_fq[0];

 if (!dpaa_fq_alloc(dev, 0, DPAA_ETH_TXQ_NUM, list, FQ_TYPE_TX_CONF_MQ))
  goto fq_alloc_failed;

 dpaa_fq = dpaa_fq_alloc(dev, 0, 1, list, FQ_TYPE_TX_ERROR);
 if (!dpaa_fq)
  goto fq_alloc_failed;

 port_fqs->tx_errq = &dpaa_fq[0];

 dpaa_fq = dpaa_fq_alloc(dev, 0, 1, list, FQ_TYPE_TX_CONFIRM);
 if (!dpaa_fq)
  goto fq_alloc_failed;

 port_fqs->tx_defq = &dpaa_fq[0];

 if (!dpaa_fq_alloc(dev, 0, DPAA_ETH_TXQ_NUM, list, FQ_TYPE_TX))
  goto fq_alloc_failed;

 return 0;

fq_alloc_failed:
 dev_err(dev, "dpaa_fq_alloc() failed\n");
 return -ENOMEM;
}
