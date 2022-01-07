
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct dpaa2_fd {int dummy; } ;
struct dpaa2_eth_priv {int dummy; } ;
struct dpaa2_eth_fq {int * tx_fqid; TYPE_1__* channel; } ;
struct TYPE_2__ {int dpio; } ;


 int dpaa2_io_service_enqueue_fq (int ,int ,struct dpaa2_fd*) ;

__attribute__((used)) static inline int dpaa2_eth_enqueue_fq(struct dpaa2_eth_priv *priv,
           struct dpaa2_eth_fq *fq,
           struct dpaa2_fd *fd, u8 prio)
{
 return dpaa2_io_service_enqueue_fq(fq->channel->dpio,
        fq->tx_fqid[prio], fd);
}
