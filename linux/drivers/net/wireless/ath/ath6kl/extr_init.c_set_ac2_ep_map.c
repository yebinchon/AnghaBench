
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ath6kl {int* ac2ep_map; size_t* ep2ac_map; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;



__attribute__((used)) static inline void set_ac2_ep_map(struct ath6kl *ar,
      u8 ac,
      enum htc_endpoint_id ep)
{
 ar->ac2ep_map[ac] = ep;
 ar->ep2ac_map[ep] = ac;
}
