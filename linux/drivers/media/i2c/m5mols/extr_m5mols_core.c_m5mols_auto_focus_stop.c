
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m5mols_info {int sd; } ;


 int AF_EXECUTE ;
 int AF_MODE ;
 int REG_AF_IDLE ;
 int REG_AF_POWEROFF ;
 int REG_AF_STOP ;
 int SYSTEM_STATUS ;
 int m5mols_busy_wait (int *,int ,int ,int,int) ;
 int m5mols_write (int *,int ,int ) ;

__attribute__((used)) static int m5mols_auto_focus_stop(struct m5mols_info *info)
{
 int ret;

 ret = m5mols_write(&info->sd, AF_EXECUTE, REG_AF_STOP);
 if (!ret)
  ret = m5mols_write(&info->sd, AF_MODE, REG_AF_POWEROFF);
 if (!ret)
  ret = m5mols_busy_wait(&info->sd, SYSTEM_STATUS, REG_AF_IDLE,
           0xff, -1);
 return ret;
}
