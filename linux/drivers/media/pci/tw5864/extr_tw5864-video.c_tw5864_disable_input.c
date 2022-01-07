
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tw5864_input {scalar_t__ enabled; int nr; struct tw5864_dev* root; } ;
struct tw5864_dev {int slock; TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int tw5864_disable_input(struct tw5864_input *input)
{
 struct tw5864_dev *dev = input->root;
 unsigned long flags;

 dev_dbg(&dev->pci->dev, "Disabling channel %d\n", input->nr);

 spin_lock_irqsave(&dev->slock, flags);
 input->enabled = 0;
 spin_unlock_irqrestore(&dev->slock, flags);
 return 0;
}
