
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath10k_htt {TYPE_1__* tx_ops; } ;
struct TYPE_2__ {int (* htt_h2t_aggr_cfg_msg ) (struct ath10k_htt*,int ,int ) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct ath10k_htt*,int ,int ) ;

__attribute__((used)) static inline int ath10k_htt_h2t_aggr_cfg_msg(struct ath10k_htt *htt,
           u8 max_subfrms_ampdu,
           u8 max_subfrms_amsdu)

{
 if (!htt->tx_ops->htt_h2t_aggr_cfg_msg)
  return -EOPNOTSUPP;

 return htt->tx_ops->htt_h2t_aggr_cfg_msg(htt,
       max_subfrms_ampdu,
       max_subfrms_amsdu);
}
