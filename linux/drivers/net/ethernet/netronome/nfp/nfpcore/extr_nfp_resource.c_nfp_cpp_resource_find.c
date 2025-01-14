
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct TYPE_4__ {int cpp_action; scalar_t__ page_size; scalar_t__ page_offset; int cpp_token; int cpp_target; } ;
struct TYPE_3__ {void* key; } ;
struct nfp_resource_entry {TYPE_2__ region; TYPE_1__ mutex; } ;
struct nfp_resource {int addr; int size; void* cpp_id; int mutex; int name; } ;
struct nfp_cpp {int dummy; } ;
typedef int entry ;


 int EIO ;
 int ENOENT ;
 int EOPNOTSUPP ;
 void* NFP_CPP_ID (int ,int,int ) ;
 int NFP_RESOURCE_ENTRY_NAME_SZ ;
 int NFP_RESOURCE_TBL_BASE ;
 int NFP_RESOURCE_TBL_ENTRIES ;
 int NFP_RESOURCE_TBL_NAME ;
 int NFP_RESOURCE_TBL_TARGET ;
 void* crc32_posix (int ,int ) ;
 int nfp_cpp_mutex_alloc (struct nfp_cpp*,int ,int,void*) ;
 int nfp_cpp_read (struct nfp_cpp*,void*,int,struct nfp_resource_entry*,int) ;
 int nfp_err (struct nfp_cpp*,char*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int nfp_cpp_resource_find(struct nfp_cpp *cpp, struct nfp_resource *res)
{
 struct nfp_resource_entry entry;
 u32 cpp_id, key;
 int ret, i;

 cpp_id = NFP_CPP_ID(NFP_RESOURCE_TBL_TARGET, 3, 0);


 if (!strcmp(res->name, NFP_RESOURCE_TBL_NAME)) {
  nfp_err(cpp, "Grabbing device lock not supported\n");
  return -EOPNOTSUPP;
 }
 key = crc32_posix(res->name, NFP_RESOURCE_ENTRY_NAME_SZ);

 for (i = 0; i < NFP_RESOURCE_TBL_ENTRIES; i++) {
  u64 addr = NFP_RESOURCE_TBL_BASE +
   sizeof(struct nfp_resource_entry) * i;

  ret = nfp_cpp_read(cpp, cpp_id, addr, &entry, sizeof(entry));
  if (ret != sizeof(entry))
   return -EIO;

  if (entry.mutex.key != key)
   continue;


  res->mutex =
   nfp_cpp_mutex_alloc(cpp,
         NFP_RESOURCE_TBL_TARGET, addr, key);
  res->cpp_id = NFP_CPP_ID(entry.region.cpp_target,
      entry.region.cpp_action,
      entry.region.cpp_token);
  res->addr = (u64)entry.region.page_offset << 8;
  res->size = (u64)entry.region.page_size << 8;

  return 0;
 }

 return -ENOENT;
}
