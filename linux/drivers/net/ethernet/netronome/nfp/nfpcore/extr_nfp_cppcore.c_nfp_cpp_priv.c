
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp {void* priv; } ;



void *nfp_cpp_priv(struct nfp_cpp *cpp)
{
 return cpp->priv;
}
