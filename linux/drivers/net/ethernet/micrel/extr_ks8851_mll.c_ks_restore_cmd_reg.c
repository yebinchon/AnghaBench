
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_net {int hw_addr_cmd; int cmd_reg_cache; int cmd_reg_cache_int; } ;


 int iowrite16 (int ,int ) ;

__attribute__((used)) static inline void ks_restore_cmd_reg(struct ks_net *ks)
{
 ks->cmd_reg_cache = ks->cmd_reg_cache_int;
 iowrite16(ks->cmd_reg_cache, ks->hw_addr_cmd);
}
