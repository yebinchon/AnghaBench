
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct res_common {int state; int res_id; } ;
struct res_fs_rule {int qpn; struct res_common com; } ;


 int GFP_KERNEL ;
 int RES_FS_RULE_ALLOCATED ;
 struct res_fs_rule* kzalloc (int,int ) ;

__attribute__((used)) static struct res_common *alloc_fs_rule_tr(u64 id, int qpn)
{
 struct res_fs_rule *ret;

 ret = kzalloc(sizeof(*ret), GFP_KERNEL);
 if (!ret)
  return ((void*)0);

 ret->com.res_id = id;
 ret->com.state = RES_FS_RULE_ALLOCATED;
 ret->qpn = qpn;
 return &ret->com;
}
