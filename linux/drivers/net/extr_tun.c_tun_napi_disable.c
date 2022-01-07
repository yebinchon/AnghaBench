
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_file {int napi; scalar_t__ napi_enabled; } ;


 int napi_disable (int *) ;

__attribute__((used)) static void tun_napi_disable(struct tun_file *tfile)
{
 if (tfile->napi_enabled)
  napi_disable(&tfile->napi);
}
