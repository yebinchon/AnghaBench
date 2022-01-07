
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rave_sp_status {int dummy; } ;
struct rave_sp {int dummy; } ;
typedef int cmd ;


 int RAVE_SP_CMD_STATUS ;
 int rave_sp_exec (struct rave_sp*,int*,int,struct rave_sp_status*,int) ;

__attribute__((used)) static int rave_sp_rdu1_get_status(struct rave_sp *sp,
       struct rave_sp_status *status)
{
 u8 cmd[] = {
  [0] = RAVE_SP_CMD_STATUS,
  [1] = 0
 };

 return rave_sp_exec(sp, cmd, sizeof(cmd), status, sizeof(*status));
}
