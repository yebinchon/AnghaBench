
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libipw_device {int * networks; } ;


 int MAX_NETWORK_COUNT ;
 int kfree (int ) ;

__attribute__((used)) static inline void libipw_networks_free(struct libipw_device *ieee)
{
 int i;

 for (i = 0; i < MAX_NETWORK_COUNT; i++)
  kfree(ieee->networks[i]);
}
