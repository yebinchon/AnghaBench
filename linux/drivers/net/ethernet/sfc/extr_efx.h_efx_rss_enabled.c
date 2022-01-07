
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int rss_spread; } ;



__attribute__((used)) static inline bool efx_rss_enabled(struct efx_nic *efx)
{
 return efx->rss_spread > 1;
}
