
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_common {int res_id; int state; } ;
struct res_mpt {int key; struct res_common com; } ;


 int GFP_KERNEL ;
 int RES_MPT_RESERVED ;
 struct res_mpt* kzalloc (int,int ) ;

__attribute__((used)) static struct res_common *alloc_mpt_tr(int id, int key)
{
 struct res_mpt *ret;

 ret = kzalloc(sizeof(*ret), GFP_KERNEL);
 if (!ret)
  return ((void*)0);

 ret->com.res_id = id;
 ret->com.state = RES_MPT_RESERVED;
 ret->key = key;

 return &ret->com;
}
