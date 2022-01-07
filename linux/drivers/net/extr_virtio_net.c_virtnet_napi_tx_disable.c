
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {scalar_t__ weight; } ;


 int napi_disable (struct napi_struct*) ;

__attribute__((used)) static void virtnet_napi_tx_disable(struct napi_struct *napi)
{
 if (napi->weight)
  napi_disable(napi);
}
