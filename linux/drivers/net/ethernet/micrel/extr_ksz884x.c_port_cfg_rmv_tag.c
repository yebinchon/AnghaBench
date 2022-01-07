
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int KS8842_PORT_CTRL_1_OFFSET ;
 int PORT_REMOVE_TAG ;
 int port_cfg (struct ksz_hw*,int,int ,int ,int) ;

__attribute__((used)) static inline void port_cfg_rmv_tag(struct ksz_hw *hw, int p, int remove)
{
 port_cfg(hw, p,
  KS8842_PORT_CTRL_1_OFFSET, PORT_REMOVE_TAG, remove);
}
