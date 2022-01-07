
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qman_release_pool (int ) ;
 int rx_pool_channel ;

__attribute__((used)) static void dpaa_release_channel(void)
{
 qman_release_pool(rx_pool_channel);
}
