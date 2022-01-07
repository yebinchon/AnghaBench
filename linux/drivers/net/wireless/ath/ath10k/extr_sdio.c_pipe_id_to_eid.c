
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;



__attribute__((used)) static inline enum ath10k_htc_ep_id pipe_id_to_eid(u8 pipe_id)
{
 return (enum ath10k_htc_ep_id)pipe_id;
}
