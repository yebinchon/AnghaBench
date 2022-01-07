
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libipw_network {int dummy; } ;
struct libipw_device {int * networks; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LIBIPW_ERROR (char*) ;
 int MAX_NETWORK_COUNT ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;

__attribute__((used)) static int libipw_networks_allocate(struct libipw_device *ieee)
{
 int i, j;

 for (i = 0; i < MAX_NETWORK_COUNT; i++) {
  ieee->networks[i] = kzalloc(sizeof(struct libipw_network),
         GFP_KERNEL);
  if (!ieee->networks[i]) {
   LIBIPW_ERROR("Out of memory allocating beacons\n");
   for (j = 0; j < i; j++)
    kfree(ieee->networks[j]);
   return -ENOMEM;
  }
 }

 return 0;
}
