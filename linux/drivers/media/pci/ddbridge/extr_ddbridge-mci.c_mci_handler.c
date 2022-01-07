
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mci_base {int completion; } ;


 int complete (int *) ;

__attribute__((used)) static void mci_handler(void *priv)
{
 struct mci_base *base = (struct mci_base *)priv;

 complete(&base->completion);
}
