
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int rss; } ;
struct TYPE_10__ {TYPE_3__ hi_dword; } ;
struct TYPE_7__ {int const status_error_len; } ;
struct TYPE_9__ {TYPE_5__ qword0; TYPE_2__ qword1; } ;
union iavf_rx_desc {TYPE_4__ wb; } ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct iavf_ring {TYPE_1__* netdev; } ;
typedef int __le64 ;
struct TYPE_6__ {int features; } ;


 scalar_t__ IAVF_RX_DESC_FLTSTAT_RSS_HASH ;
 int IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT ;
 int NETIF_F_RXHASH ;
 int cpu_to_le64 (int) ;
 int iavf_ptype_to_htype (int ) ;
 int le32_to_cpu (int ) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline void iavf_rx_hash(struct iavf_ring *ring,
    union iavf_rx_desc *rx_desc,
    struct sk_buff *skb,
    u8 rx_ptype)
{
 u32 hash;
 const __le64 rss_mask =
  cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
       IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);

 if (ring->netdev->features & NETIF_F_RXHASH)
  return;

 if ((rx_desc->wb.qword1.status_error_len & rss_mask) == rss_mask) {
  hash = le32_to_cpu(rx_desc->wb.qword0.hi_dword.rss);
  skb_set_hash(skb, hash, iavf_ptype_to_htype(rx_ptype));
 }
}
