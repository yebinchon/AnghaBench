
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct b43_sdio {int ssb; } ;


 int kfree (struct b43_sdio*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 struct b43_sdio* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_set_drvdata (struct sdio_func*,int *) ;
 int ssb_bus_unregister (int *) ;

__attribute__((used)) static void b43_sdio_remove(struct sdio_func *func)
{
 struct b43_sdio *sdio = sdio_get_drvdata(func);

 ssb_bus_unregister(&sdio->ssb);
 sdio_claim_host(func);
 sdio_disable_func(func);
 sdio_release_host(func);
 kfree(sdio);
 sdio_set_drvdata(func, ((void*)0));
}
