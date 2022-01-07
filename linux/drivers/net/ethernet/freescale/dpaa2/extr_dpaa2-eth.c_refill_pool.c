
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dpaa2_eth_priv {int dummy; } ;
struct dpaa2_eth_channel {scalar_t__ buf_count; } ;


 scalar_t__ DPAA2_ETH_NUM_BUFS ;
 scalar_t__ DPAA2_ETH_REFILL_THRESH ;
 int ENOMEM ;
 int add_bufs (struct dpaa2_eth_priv*,struct dpaa2_eth_channel*,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int refill_pool(struct dpaa2_eth_priv *priv,
         struct dpaa2_eth_channel *ch,
         u16 bpid)
{
 int new_count;

 if (likely(ch->buf_count >= DPAA2_ETH_REFILL_THRESH))
  return 0;

 do {
  new_count = add_bufs(priv, ch, bpid);
  if (unlikely(!new_count)) {

   break;
  }
  ch->buf_count += new_count;
 } while (ch->buf_count < DPAA2_ETH_NUM_BUFS);

 if (unlikely(ch->buf_count < DPAA2_ETH_NUM_BUFS))
  return -ENOMEM;

 return 0;
}
