
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct local_info* priv; int dev; } ;
struct local_info {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int airo_config (struct pcmcia_device*) ;
 int dev_dbg (int *,char*) ;
 struct local_info* kzalloc (int,int ) ;

__attribute__((used)) static int airo_probe(struct pcmcia_device *p_dev)
{
 struct local_info *local;

 dev_dbg(&p_dev->dev, "airo_attach()\n");


 local = kzalloc(sizeof(*local), GFP_KERNEL);
 if (!local)
  return -ENOMEM;

 p_dev->priv = local;

 return airo_config(p_dev);
}
