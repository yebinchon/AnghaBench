
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etherh_priv {unsigned char ctrl; int ctrl_port; } ;


 int writeb (unsigned char,int ) ;

__attribute__((used)) static inline void etherh_set_ctrl(struct etherh_priv *eh, unsigned char mask)
{
 unsigned char ctrl = eh->ctrl | mask;
 eh->ctrl = ctrl;
 writeb(ctrl, eh->ctrl_port);
}
