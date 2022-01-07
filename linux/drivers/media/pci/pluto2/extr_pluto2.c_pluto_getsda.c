
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pluto {int dummy; } ;


 int REG_SLCS ;
 int SLCS_SDA ;
 int pluto_readreg (struct pluto*,int ) ;

__attribute__((used)) static int pluto_getsda(void *data)
{
 struct pluto *pluto = data;

 return pluto_readreg(pluto, REG_SLCS) & SLCS_SDA;
}
