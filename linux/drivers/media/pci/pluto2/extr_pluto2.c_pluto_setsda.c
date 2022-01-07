
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pluto {int dummy; } ;


 int REG_SLCS ;
 int SLCS_SDA ;
 int pluto_rw (struct pluto*,int ,int ,int ) ;

__attribute__((used)) static void pluto_setsda(void *data, int state)
{
 struct pluto *pluto = data;

 if (state)
  pluto_rw(pluto, REG_SLCS, SLCS_SDA, SLCS_SDA);
 else
  pluto_rw(pluto, REG_SLCS, SLCS_SDA, 0);
}
