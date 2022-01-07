
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_smi {int clk_delay; } ;


 int ndelay (int ) ;

__attribute__((used)) static inline void realtek_smi_clk_delay(struct realtek_smi *smi)
{
 ndelay(smi->clk_delay);
}
