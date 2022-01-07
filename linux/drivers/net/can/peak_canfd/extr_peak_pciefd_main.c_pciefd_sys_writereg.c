
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct pciefd_board {scalar_t__ reg_base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void pciefd_sys_writereg(const struct pciefd_board *priv,
           u32 val, u16 reg)
{
 writel(val, priv->reg_base + reg);
}
