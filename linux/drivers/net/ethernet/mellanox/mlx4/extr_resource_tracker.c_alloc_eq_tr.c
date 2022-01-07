
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_common {int res_id; int state; } ;
struct res_eq {struct res_common com; } ;


 int GFP_KERNEL ;
 int RES_EQ_RESERVED ;
 struct res_eq* kzalloc (int,int ) ;

__attribute__((used)) static struct res_common *alloc_eq_tr(int id)
{
 struct res_eq *ret;

 ret = kzalloc(sizeof(*ret), GFP_KERNEL);
 if (!ret)
  return ((void*)0);

 ret->com.res_id = id;
 ret->com.state = RES_EQ_RESERVED;

 return &ret->com;
}
