
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int KS8842_PORT_CTRL_2_OFFSET ;
 int PORT_USER_PRIORITY_CEILING ;
 int port_chk (struct ksz_hw*,int,int ,int ) ;

__attribute__((used)) static inline int port_chk_replace_vid(struct ksz_hw *hw, int p)
{
 return port_chk(hw, p,
  KS8842_PORT_CTRL_2_OFFSET, PORT_USER_PRIORITY_CEILING);
}
