
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_bundle_lkahd; int rx_lkahds; int rx_pkts; } ;
struct htc_endpoint {TYPE_1__ ep_st; } ;



__attribute__((used)) static inline void ath6kl_htc_rx_update_stats(struct htc_endpoint *endpoint,
           int n_look_ahds)
{
 endpoint->ep_st.rx_pkts++;
 if (n_look_ahds == 1)
  endpoint->ep_st.rx_lkahds++;
 else if (n_look_ahds > 1)
  endpoint->ep_st.rx_bundle_lkahd++;
}
