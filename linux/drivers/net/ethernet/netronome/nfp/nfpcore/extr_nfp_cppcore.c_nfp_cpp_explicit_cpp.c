
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_explicit {struct nfp_cpp* cpp; } ;
struct nfp_cpp {int dummy; } ;



struct nfp_cpp *nfp_cpp_explicit_cpp(struct nfp_cpp_explicit *cpp_explicit)
{
 return cpp_explicit->cpp;
}
