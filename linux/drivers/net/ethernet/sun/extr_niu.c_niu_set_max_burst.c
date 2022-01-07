
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_ring_info {int max_burst; } ;
struct niu {TYPE_1__* dev; } ;
struct TYPE_2__ {int mtu; } ;



__attribute__((used)) static void niu_set_max_burst(struct niu *np, struct tx_ring_info *rp)
{
 int mtu = np->dev->mtu;




 rp->max_burst = mtu + 32;
 if (rp->max_burst > 4096)
  rp->max_burst = 4096;
}
