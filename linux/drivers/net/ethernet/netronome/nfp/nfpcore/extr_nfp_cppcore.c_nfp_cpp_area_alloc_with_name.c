
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
struct TYPE_4__ {unsigned long long start; unsigned long end; int list; int cpp_id; void* name; } ;
struct nfp_cpp_area {unsigned long long offset; unsigned long size; TYPE_2__ resource; int mutex; int kref; int refcount; struct nfp_cpp* cpp; } ;
struct nfp_cpp {int resource_lock; int resource_list; TYPE_1__* op; int imb_cat_table; } ;
struct TYPE_3__ {int area_priv_size; int (* area_init ) (struct nfp_cpp_area*,int ,unsigned long long,unsigned long) ;} ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __resource_add (int *,TYPE_2__*) ;
 int atomic_set (int *,int ) ;
 int kfree (struct nfp_cpp_area*) ;
 int kref_init (int *) ;
 struct nfp_cpp_area* kzalloc (int,int ) ;
 int memcpy (char*,char const*,int) ;
 int mutex_init (int *) ;
 int nfp_target_cpp (int ,unsigned long long,int *,unsigned long long*,int ) ;
 int strlen (char const*) ;
 int stub1 (struct nfp_cpp_area*,int ,unsigned long long,unsigned long) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

struct nfp_cpp_area *
nfp_cpp_area_alloc_with_name(struct nfp_cpp *cpp, u32 dest, const char *name,
        unsigned long long address, unsigned long size)
{
 struct nfp_cpp_area *area;
 u64 tmp64 = address;
 int err, name_len;


 err = nfp_target_cpp(dest, tmp64, &dest, &tmp64, cpp->imb_cat_table);
 if (err < 0)
  return ((void*)0);

 address = tmp64;

 if (!name)
  name = "(reserved)";

 name_len = strlen(name) + 1;
 area = kzalloc(sizeof(*area) + cpp->op->area_priv_size + name_len,
         GFP_KERNEL);
 if (!area)
  return ((void*)0);

 area->cpp = cpp;
 area->resource.name = (void *)area + sizeof(*area) +
  cpp->op->area_priv_size;
 memcpy((char *)area->resource.name, name, name_len);

 area->resource.cpp_id = dest;
 area->resource.start = address;
 area->resource.end = area->resource.start + size - 1;
 INIT_LIST_HEAD(&area->resource.list);

 atomic_set(&area->refcount, 0);
 kref_init(&area->kref);
 mutex_init(&area->mutex);

 if (cpp->op->area_init) {
  int err;

  err = cpp->op->area_init(area, dest, address, size);
  if (err < 0) {
   kfree(area);
   return ((void*)0);
  }
 }

 write_lock(&cpp->resource_lock);
 __resource_add(&cpp->resource_list, &area->resource);
 write_unlock(&cpp->resource_lock);

 area->offset = address;
 area->size = size;

 return area;
}
