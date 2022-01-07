
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct tx_ring_info {int tx_channel; } ;
struct niu {int dev; } ;


 int ENODEV ;
 int TX_CS (int ) ;
 int TX_RNG_ERR_LOGH (int ) ;
 int TX_RNG_ERR_LOGL (int ) ;
 int netdev_err (int ,char*,int ,unsigned long long,unsigned long long,unsigned long long) ;
 int niu_log_txchan_errors (struct niu*,struct tx_ring_info*,scalar_t__) ;
 scalar_t__ nr64 (int ) ;

__attribute__((used)) static int niu_tx_error(struct niu *np, struct tx_ring_info *rp)
{
 u64 cs, logh, logl;

 cs = nr64(TX_CS(rp->tx_channel));
 logh = nr64(TX_RNG_ERR_LOGH(rp->tx_channel));
 logl = nr64(TX_RNG_ERR_LOGL(rp->tx_channel));

 netdev_err(np->dev, "TX channel %u error, cs[%llx] logh[%llx] logl[%llx]\n",
     rp->tx_channel,
     (unsigned long long)cs,
     (unsigned long long)logh,
     (unsigned long long)logl);

 niu_log_txchan_errors(np, rp, cs);

 return -ENODEV;
}
