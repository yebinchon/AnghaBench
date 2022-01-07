
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int demod; } ;
struct sx8 {TYPE_1__ mci; } ;
struct mci {int dummy; } ;


 int SX8_DEMOD_NONE ;

__attribute__((used)) static int init(struct mci *mci)
{
 struct sx8 *state = (struct sx8 *)mci;

 state->mci.demod = SX8_DEMOD_NONE;
 return 0;
}
