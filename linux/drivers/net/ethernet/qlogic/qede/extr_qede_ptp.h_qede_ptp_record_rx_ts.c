
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ pars_flags; } ;
union eth_rx_cqe {TYPE_2__ fast_path_regular; } ;
struct sk_buff {int dummy; } ;
struct qede_dev {int dummy; } ;


 int DP_INFO (struct qede_dev*,char*) ;
 int PARSING_AND_ERR_FLAGS_TIMESTAMPRECORDED_SHIFT ;
 int PARSING_AND_ERR_FLAGS_TIMESYNCPKT_SHIFT ;
 int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int qede_ptp_rx_ts (struct qede_dev*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void qede_ptp_record_rx_ts(struct qede_dev *edev,
      union eth_rx_cqe *cqe,
      struct sk_buff *skb)
{

 if (unlikely(le16_to_cpu(cqe->fast_path_regular.pars_flags.flags) &
       (1 << PARSING_AND_ERR_FLAGS_TIMESTAMPRECORDED_SHIFT))) {
  if (likely(le16_to_cpu(cqe->fast_path_regular.pars_flags.flags)
      & (1 << PARSING_AND_ERR_FLAGS_TIMESYNCPKT_SHIFT))) {
   qede_ptp_rx_ts(edev, skb);
  } else {
   DP_INFO(edev,
    "Timestamp recorded for non PTP packets\n");
  }
 }
}
