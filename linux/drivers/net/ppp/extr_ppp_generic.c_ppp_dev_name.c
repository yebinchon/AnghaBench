
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ppp_channel {struct channel* ppp; } ;
struct channel {int upl; TYPE_2__* ppp; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {char* name; } ;


 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

char *ppp_dev_name(struct ppp_channel *chan)
{
 struct channel *pch = chan->ppp;
 char *name = ((void*)0);

 if (pch) {
  read_lock_bh(&pch->upl);
  if (pch->ppp && pch->ppp->dev)
   name = pch->ppp->dev->name;
  read_unlock_bh(&pch->upl);
 }
 return name;
}
