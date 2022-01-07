
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_extra_stats {int vlan_tag; int rx_mii; int rx_length; int dribbling_bit; int rx_crc_errors; int rx_collision; int ipc_csum_error; int overflow_error; int sa_filter_fail; int rx_desc; } ;
struct net_device_stats {int rx_crc_errors; int collisions; int rx_length_errors; } ;
struct dma_desc {int des0; } ;


 unsigned int RDES0_COLLISION ;
 unsigned int RDES0_CRC_ERROR ;
 unsigned int RDES0_DESCRIPTOR_ERROR ;
 unsigned int RDES0_DRIBBLING ;
 unsigned int RDES0_ERROR_SUMMARY ;
 unsigned int RDES0_IPC_CSUM_ERROR ;
 unsigned int RDES0_LAST_DESCRIPTOR ;
 unsigned int RDES0_LENGTH_ERROR ;
 unsigned int RDES0_MII_ERROR ;
 unsigned int RDES0_OVERFLOW_ERROR ;
 unsigned int RDES0_OWN ;
 unsigned int RDES0_SA_FILTER_FAIL ;
 unsigned int RDES0_VLAN_TAG ;
 int discard_frame ;
 int dma_own ;
 int good_frame ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static int ndesc_get_rx_status(void *data, struct stmmac_extra_stats *x,
          struct dma_desc *p)
{
 int ret = good_frame;
 unsigned int rdes0 = le32_to_cpu(p->des0);
 struct net_device_stats *stats = (struct net_device_stats *)data;

 if (unlikely(rdes0 & RDES0_OWN))
  return dma_own;

 if (unlikely(!(rdes0 & RDES0_LAST_DESCRIPTOR))) {
  stats->rx_length_errors++;
  return discard_frame;
 }

 if (unlikely(rdes0 & RDES0_ERROR_SUMMARY)) {
  if (unlikely(rdes0 & RDES0_DESCRIPTOR_ERROR))
   x->rx_desc++;
  if (unlikely(rdes0 & RDES0_SA_FILTER_FAIL))
   x->sa_filter_fail++;
  if (unlikely(rdes0 & RDES0_OVERFLOW_ERROR))
   x->overflow_error++;
  if (unlikely(rdes0 & RDES0_IPC_CSUM_ERROR))
   x->ipc_csum_error++;
  if (unlikely(rdes0 & RDES0_COLLISION)) {
   x->rx_collision++;
   stats->collisions++;
  }
  if (unlikely(rdes0 & RDES0_CRC_ERROR)) {
   x->rx_crc_errors++;
   stats->rx_crc_errors++;
  }
  ret = discard_frame;
 }
 if (unlikely(rdes0 & RDES0_DRIBBLING))
  x->dribbling_bit++;

 if (unlikely(rdes0 & RDES0_LENGTH_ERROR)) {
  x->rx_length++;
  ret = discard_frame;
 }
 if (unlikely(rdes0 & RDES0_MII_ERROR)) {
  x->rx_mii++;
  ret = discard_frame;
 }




 return ret;
}
