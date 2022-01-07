
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xenbus_device {int nodename; } ;


 int ENOENT ;
 int ETH_ALEN ;
 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 int XBT_NIL ;
 int kfree (char*) ;
 int simple_strtoul (char*,char**,int) ;
 char* xenbus_read (int ,int ,char*,int *) ;

__attribute__((used)) static int xen_net_read_mac(struct xenbus_device *dev, u8 mac[])
{
 char *s, *e, *macstr;
 int i;

 macstr = s = xenbus_read(XBT_NIL, dev->nodename, "mac", ((void*)0));
 if (IS_ERR(macstr))
  return PTR_ERR(macstr);

 for (i = 0; i < ETH_ALEN; i++) {
  mac[i] = simple_strtoul(s, &e, 16);
  if ((s == e) || (*e != ((i == ETH_ALEN-1) ? '\0' : ':'))) {
   kfree(macstr);
   return -ENOENT;
  }
  s = e+1;
 }

 kfree(macstr);
 return 0;
}
