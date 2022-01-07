
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_resource {int list; } ;


 int list_del_init (int *) ;

__attribute__((used)) static void __resource_del(struct nfp_cpp_resource *res)
{
 list_del_init(&res->list);
}
