
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; } ;
struct airo_info {TYPE_1__ config; } ;
typedef int cfg ;
typedef TYPE_1__ ConfigRid ;


 int PC4500_readrid (struct airo_info*,int ,TYPE_1__*,int,int) ;
 int RID_ACTUALCONFIG ;
 int SUCCESS ;

__attribute__((used)) static int readConfigRid(struct airo_info *ai, int lock)
{
 int rc;
 ConfigRid cfg;

 if (ai->config.len)
  return SUCCESS;

 rc = PC4500_readrid(ai, RID_ACTUALCONFIG, &cfg, sizeof(cfg), lock);
 if (rc != SUCCESS)
  return rc;

 ai->config = cfg;
 return SUCCESS;
}
