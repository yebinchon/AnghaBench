
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int KS8842_PORT_CTRL_1_OFFSET ;
 int PORT_INSERT_TAG ;
 int port_chk (struct ksz_hw*,int,int ,int ) ;

__attribute__((used)) static inline int port_chk_ins_tag(struct ksz_hw *hw, int p)
{
 return port_chk(hw, p,
  KS8842_PORT_CTRL_1_OFFSET, PORT_INSERT_TAG);
}
