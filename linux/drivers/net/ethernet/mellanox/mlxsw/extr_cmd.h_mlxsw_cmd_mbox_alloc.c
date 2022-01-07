
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int MLXSW_CMD_MBOX_SIZE ;
 char* kzalloc (int ,int ) ;

__attribute__((used)) static inline char *mlxsw_cmd_mbox_alloc(void)
{
 return kzalloc(MLXSW_CMD_MBOX_SIZE, GFP_KERNEL);
}
