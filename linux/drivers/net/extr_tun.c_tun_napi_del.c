
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_file {int napi; scalar_t__ napi_enabled; } ;


 int netif_napi_del (int *) ;

__attribute__((used)) static void tun_napi_del(struct tun_file *tfile)
{
 if (tfile->napi_enabled)
  netif_napi_del(&tfile->napi);
}
