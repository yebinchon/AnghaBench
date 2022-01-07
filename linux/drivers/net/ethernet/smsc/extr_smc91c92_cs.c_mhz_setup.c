
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct pcmcia_device {char** prod_id; struct net_device* priv; } ;
struct net_device {int dummy; } ;


 int CISTPL_VERS_1 ;
 scalar_t__ cvt_ascii_address (struct net_device*,char*) ;
 int kfree (char*) ;
 size_t pcmcia_get_tuple (struct pcmcia_device*,int,char**) ;
 int pcmcia_get_versmac ;
 int pcmcia_loop_tuple (struct pcmcia_device*,int ,int ,struct net_device*) ;

__attribute__((used)) static int mhz_setup(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    size_t len;
    u8 *buf;
    int rc;



    if ((link->prod_id[3]) &&
 (cvt_ascii_address(dev, link->prod_id[3]) == 0))
     return 0;



    if (!pcmcia_loop_tuple(link, CISTPL_VERS_1, pcmcia_get_versmac, dev))
     return 0;


    rc = -1;
    len = pcmcia_get_tuple(link, 0x81, &buf);
    if (buf && len >= 13) {
     buf[12] = '\0';
     if (cvt_ascii_address(dev, buf) == 0)
      rc = 0;
    }
    kfree(buf);

    return rc;
}
