
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mci {int dummy; } ;


 int mci_reset (struct mci*) ;

__attribute__((used)) static int probe(struct mci *state)
{
 mci_reset(state);
 return 0;
}
