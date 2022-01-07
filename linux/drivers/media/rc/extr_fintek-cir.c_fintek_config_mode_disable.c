
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fintek_dev {int cr_ip; } ;


 int CONFIG_REG_DISABLE ;
 int outb (int ,int ) ;

__attribute__((used)) static inline void fintek_config_mode_disable(struct fintek_dev *fintek)
{
 outb(CONFIG_REG_DISABLE, fintek->cr_ip);
}
