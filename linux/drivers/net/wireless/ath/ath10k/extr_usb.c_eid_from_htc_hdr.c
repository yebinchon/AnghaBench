
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_htc_hdr {int eid; } ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;



__attribute__((used)) static inline enum ath10k_htc_ep_id
eid_from_htc_hdr(struct ath10k_htc_hdr *htc_hdr)
{
 return (enum ath10k_htc_ep_id)htc_hdr->eid;
}
