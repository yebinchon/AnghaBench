
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int* dev_addr; } ;


 int strlen (char*) ;

__attribute__((used)) static int cvt_ascii_address(struct net_device *dev, char *s)
{
    int i, j, da, c;

    if (strlen(s) != 12)
 return -1;
    for (i = 0; i < 6; i++) {
 da = 0;
 for (j = 0; j < 2; j++) {
     c = *s++;
     da <<= 4;
     da += ((c >= '0') && (c <= '9')) ?
  (c - '0') : ((c & 0x0f) + 9);
 }
 dev->dev_addr[i] = da;
    }
    return 0;
}
