
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_adapter {int * rss_lut; int * rss_key; } ;


 int kfree (int *) ;

__attribute__((used)) static void iavf_free_rss(struct iavf_adapter *adapter)
{
 kfree(adapter->rss_key);
 adapter->rss_key = ((void*)0);

 kfree(adapter->rss_lut);
 adapter->rss_lut = ((void*)0);
}
