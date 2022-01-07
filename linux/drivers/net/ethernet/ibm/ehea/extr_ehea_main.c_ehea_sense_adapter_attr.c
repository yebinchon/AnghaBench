
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hcp_query_ehea {scalar_t__ max_mc_mac; } ;
struct ehea_adapter {scalar_t__ max_mc_mac; int handle; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ H_SUCCESS ;
 scalar_t__ ehea_h_query_ehea (int ,struct hcp_query_ehea*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;

__attribute__((used)) static int ehea_sense_adapter_attr(struct ehea_adapter *adapter)
{
 struct hcp_query_ehea *cb;
 u64 hret;
 int ret;

 cb = (void *)get_zeroed_page(GFP_KERNEL);
 if (!cb) {
  ret = -ENOMEM;
  goto out;
 }

 hret = ehea_h_query_ehea(adapter->handle, cb);

 if (hret != H_SUCCESS) {
  ret = -EIO;
  goto out_herr;
 }

 adapter->max_mc_mac = cb->max_mc_mac - 1;
 ret = 0;

out_herr:
 free_page((unsigned long)cb);
out:
 return ret;
}
