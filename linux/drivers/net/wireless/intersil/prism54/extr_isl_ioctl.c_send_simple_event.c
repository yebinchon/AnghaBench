
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* pointer; int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct TYPE_5__ {int ndev; } ;
typedef TYPE_2__ islpci_private ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int IWEVCUSTOM ;
 int IW_CUSTOM_MAX ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int wireless_send_event (int ,int ,union iwreq_data*,char*) ;

__attribute__((used)) static void
send_simple_event(islpci_private *priv, const char *str)
{
 union iwreq_data wrqu;
 char *memptr;
 int n = strlen(str);

 memptr = kmalloc(IW_CUSTOM_MAX, GFP_KERNEL);
 if (!memptr)
  return;
 BUG_ON(n >= IW_CUSTOM_MAX);
 wrqu.data.pointer = memptr;
 wrqu.data.length = n;
 strcpy(memptr, str);
 wireless_send_event(priv->ndev, IWEVCUSTOM, &wrqu, memptr);
 kfree(memptr);
}
