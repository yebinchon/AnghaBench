
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_cpp_explicit {int dummy; } ;
struct nfp6000_explicit_priv {scalar_t__ data; } ;


 struct nfp6000_explicit_priv* nfp_cpp_explicit_priv (struct nfp_cpp_explicit*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int nfp6000_explicit_get(struct nfp_cpp_explicit *expl,
    void *buff, size_t len)
{
 struct nfp6000_explicit_priv *priv = nfp_cpp_explicit_priv(expl);
 u32 *dst = buff;
 size_t i;

 for (i = 0; i < len; i += sizeof(u32))
  *(dst++) = readl(priv->data + i);

 return i;
}
