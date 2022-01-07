
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_CMD_MBOX_SIZE ;
 int memset (char*,int ,int ) ;

__attribute__((used)) static inline void mlxsw_cmd_mbox_zero(char *mbox)
{
 memset(mbox, 0, MLXSW_CMD_MBOX_SIZE);
}
