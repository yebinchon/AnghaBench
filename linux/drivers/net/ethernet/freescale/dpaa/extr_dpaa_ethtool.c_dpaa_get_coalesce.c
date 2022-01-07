
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qman_portal {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int use_adaptive_rx_coalesce; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;


 int qman_dqrr_get_ithresh (struct qman_portal*,int *) ;
 struct qman_portal* qman_get_affine_portal (int ) ;
 int qman_portal_get_iperiod (struct qman_portal*,int *) ;
 int smp_processor_id () ;

__attribute__((used)) static int dpaa_get_coalesce(struct net_device *dev,
        struct ethtool_coalesce *c)
{
 struct qman_portal *portal;
 u32 period;
 u8 thresh;

 portal = qman_get_affine_portal(smp_processor_id());
 qman_portal_get_iperiod(portal, &period);
 qman_dqrr_get_ithresh(portal, &thresh);

 c->rx_coalesce_usecs = period;
 c->rx_max_coalesced_frames = thresh;
 c->use_adaptive_rx_coalesce = 0;

 return 0;
}
