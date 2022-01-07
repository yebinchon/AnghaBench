
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmciamtd_dev {struct pcmcia_device* p_dev; } ;
struct pcmcia_device {struct pcmciamtd_dev* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pcmciamtd_dev* kzalloc (int,int ) ;
 int pcmciamtd_config (struct pcmcia_device*) ;
 int pr_debug (char*,struct pcmciamtd_dev*) ;

__attribute__((used)) static int pcmciamtd_probe(struct pcmcia_device *link)
{
 struct pcmciamtd_dev *dev;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) return -ENOMEM;
 pr_debug("dev=0x%p\n", dev);

 dev->p_dev = link;
 link->priv = dev;

 return pcmciamtd_config(link);
}
