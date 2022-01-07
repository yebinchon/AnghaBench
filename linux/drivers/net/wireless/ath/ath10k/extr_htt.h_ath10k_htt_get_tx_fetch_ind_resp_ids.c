
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htt_tx_fetch_ind {int num_records; int * records; } ;


 size_t le16_to_cpu (int ) ;

__attribute__((used)) static inline void *
ath10k_htt_get_tx_fetch_ind_resp_ids(struct htt_tx_fetch_ind *ind)
{
 return (void *)&ind->records[le16_to_cpu(ind->num_records)];
}
