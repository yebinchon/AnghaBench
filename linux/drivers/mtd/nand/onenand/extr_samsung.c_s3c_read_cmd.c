
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ahb_addr; } ;


 TYPE_1__* onenand ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int s3c_read_cmd(unsigned int cmd)
{
 return readl(onenand->ahb_addr + cmd);
}
