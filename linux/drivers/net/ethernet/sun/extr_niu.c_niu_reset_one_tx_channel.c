
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring_info {int tx_channel; } ;
struct niu {int dummy; } ;


 int niu_tx_channel_reset (struct niu*,int ) ;

__attribute__((used)) static void niu_reset_one_tx_channel(struct niu *np, struct tx_ring_info *rp)
{
 (void) niu_tx_channel_reset(np, rp->tx_channel);
}
