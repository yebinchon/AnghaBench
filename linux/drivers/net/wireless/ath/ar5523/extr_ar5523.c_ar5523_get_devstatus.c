
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ar5523 {int * serial; int hw; } ;


 int ETH_ALEN ;
 int SET_IEEE80211_PERM_ADDR (int ,int *) ;
 int ST_MAC_ADDR ;
 int ST_SERIAL_NUMBER ;
 int ar5523_err (struct ar5523*,char*) ;
 int ar5523_get_status (struct ar5523*,int ,int *,int) ;

__attribute__((used)) static int ar5523_get_devstatus(struct ar5523 *ar)
{
 u8 macaddr[ETH_ALEN];
 int error;


 error = ar5523_get_status(ar, ST_MAC_ADDR, macaddr, ETH_ALEN);
 if (error) {
  ar5523_err(ar, "could not read MAC address\n");
  return error;
 }

 SET_IEEE80211_PERM_ADDR(ar->hw, macaddr);

 error = ar5523_get_status(ar, ST_SERIAL_NUMBER,
     &ar->serial[0], sizeof(ar->serial));
 if (error) {
  ar5523_err(ar, "could not read device serial number\n");
  return error;
 }
 return 0;
}
