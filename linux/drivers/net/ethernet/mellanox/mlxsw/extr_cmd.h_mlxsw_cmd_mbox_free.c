
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (char*) ;

__attribute__((used)) static inline void mlxsw_cmd_mbox_free(char *mbox)
{
 kfree(mbox);
}
