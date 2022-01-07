
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ath6kl {int* ac2ep_map; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;



enum htc_endpoint_id ath6kl_ac2_endpoint_id(void *devt, u8 ac)
{
 struct ath6kl *ar = devt;
 return ar->ac2ep_map[ac];
}
