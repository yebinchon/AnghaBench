
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae_queue {int dummy; } ;


 int HNS_RCB_RING_MAX_PENDING_BD ;

__attribute__((used)) static void hns_ae_get_ring_bdnum_limit(struct hnae_queue *queue,
     u32 *uplimit)
{
 *uplimit = HNS_RCB_RING_MAX_PENDING_BD;
}
