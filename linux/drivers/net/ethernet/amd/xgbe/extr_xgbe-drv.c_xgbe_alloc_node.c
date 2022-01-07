
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void* kzalloc (size_t,int ) ;
 void* kzalloc_node (size_t,int ,int) ;

__attribute__((used)) static void *xgbe_alloc_node(size_t size, int node)
{
 void *mem;

 mem = kzalloc_node(size, GFP_KERNEL, node);
 if (!mem)
  mem = kzalloc(size, GFP_KERNEL);

 return mem;
}
