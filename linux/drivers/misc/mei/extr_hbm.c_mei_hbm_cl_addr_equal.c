
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_hbm_cl_cmd {scalar_t__ host_addr; scalar_t__ me_addr; } ;
struct mei_cl {int dummy; } ;


 scalar_t__ mei_cl_host_addr (struct mei_cl*) ;
 scalar_t__ mei_cl_me_id (struct mei_cl*) ;

__attribute__((used)) static inline
bool mei_hbm_cl_addr_equal(struct mei_cl *cl, struct mei_hbm_cl_cmd *cmd)
{
 return mei_cl_host_addr(cl) == cmd->host_addr &&
  mei_cl_me_id(cl) == cmd->me_addr;
}
