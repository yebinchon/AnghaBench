
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int tx_timeout_task_counter; int waitq; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int SPIDER_NET_CKRCTRL ;
 int SPIDER_NET_CKRCTRL_RUN_VALUE ;
 int SPIDER_NET_CKRCTRL_STOP_VALUE ;
 scalar_t__ atomic_read (int *) ;
 int free_netdev (struct net_device*) ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int spider_net_undo_pci_setup (struct spider_net_card*) ;
 int spider_net_write_reg (struct spider_net_card*,int ,int ) ;
 int unregister_netdev (struct net_device*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void
spider_net_remove(struct pci_dev *pdev)
{
 struct net_device *netdev;
 struct spider_net_card *card;

 netdev = pci_get_drvdata(pdev);
 card = netdev_priv(netdev);

 wait_event(card->waitq,
     atomic_read(&card->tx_timeout_task_counter) == 0);

 unregister_netdev(netdev);


 spider_net_write_reg(card, SPIDER_NET_CKRCTRL,
        SPIDER_NET_CKRCTRL_STOP_VALUE);
 spider_net_write_reg(card, SPIDER_NET_CKRCTRL,
        SPIDER_NET_CKRCTRL_RUN_VALUE);

 spider_net_undo_pci_setup(card);
 free_netdev(netdev);
}
