
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_endpoint {scalar_t__ service_id; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int ENDPOINT0 ;
 int ENDPOINT_MAX ;

__attribute__((used)) static struct htc_endpoint *get_next_avail_ep(struct htc_endpoint *endpoint)
{
 enum htc_endpoint_id avail_epid;

 for (avail_epid = (ENDPOINT_MAX - 1); avail_epid > ENDPOINT0; avail_epid--)
  if (endpoint[avail_epid].service_id == 0)
   return &endpoint[avail_epid];
 return ((void*)0);
}
