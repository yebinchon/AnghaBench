
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpaa2_fd {int dummy; } ;
struct dpaa2_eth_priv {int dummy; } ;
struct TYPE_2__ {int frames; } ;
struct dpaa2_eth_fq {TYPE_1__ stats; int (* consume ) (struct dpaa2_eth_priv*,struct dpaa2_eth_channel*,struct dpaa2_fd const*,struct dpaa2_eth_fq*) ;} ;
struct dpaa2_eth_channel {int store; struct dpaa2_eth_priv* priv; } ;
struct dpaa2_dq {int dummy; } ;


 struct dpaa2_fd* dpaa2_dq_fd (struct dpaa2_dq*) ;
 scalar_t__ dpaa2_dq_fqd_ctx (struct dpaa2_dq*) ;
 struct dpaa2_dq* dpaa2_io_store_next (int ,int*) ;
 int stub1 (struct dpaa2_eth_priv*,struct dpaa2_eth_channel*,struct dpaa2_fd const*,struct dpaa2_eth_fq*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int consume_frames(struct dpaa2_eth_channel *ch,
     struct dpaa2_eth_fq **src)
{
 struct dpaa2_eth_priv *priv = ch->priv;
 struct dpaa2_eth_fq *fq = ((void*)0);
 struct dpaa2_dq *dq;
 const struct dpaa2_fd *fd;
 int cleaned = 0;
 int is_last;

 do {
  dq = dpaa2_io_store_next(ch->store, &is_last);
  if (unlikely(!dq)) {





   continue;
  }

  fd = dpaa2_dq_fd(dq);
  fq = (struct dpaa2_eth_fq *)(uintptr_t)dpaa2_dq_fqd_ctx(dq);

  fq->consume(priv, ch, fd, fq);
  cleaned++;
 } while (!is_last);

 if (!cleaned)
  return 0;

 fq->stats.frames += cleaned;




 if (src)
  *src = fq;

 return cleaned;
}
