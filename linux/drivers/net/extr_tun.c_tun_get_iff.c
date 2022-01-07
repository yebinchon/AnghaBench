
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tun_struct {TYPE_1__* dev; } ;
struct ifreq {int ifr_flags; int ifr_name; } ;
struct TYPE_2__ {int name; } ;


 int KERN_INFO ;
 int strcpy (int ,int ) ;
 int tun_debug (int ,struct tun_struct*,char*) ;
 int tun_flags (struct tun_struct*) ;

__attribute__((used)) static void tun_get_iff(struct tun_struct *tun, struct ifreq *ifr)
{
 tun_debug(KERN_INFO, tun, "tun_get_iff\n");

 strcpy(ifr->ifr_name, tun->dev->name);

 ifr->ifr_flags = tun_flags(tun);

}
