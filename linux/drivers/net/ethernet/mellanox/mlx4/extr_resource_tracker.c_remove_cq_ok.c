
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct res_cq {TYPE_1__ com; } ;


 int EBUSY ;
 int EPERM ;
 scalar_t__ RES_CQ_ALLOCATED ;
 scalar_t__ RES_CQ_BUSY ;

__attribute__((used)) static int remove_cq_ok(struct res_cq *res)
{
 if (res->com.state == RES_CQ_BUSY)
  return -EBUSY;
 else if (res->com.state != RES_CQ_ALLOCATED)
  return -EPERM;

 return 0;
}
