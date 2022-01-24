#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct pcmcia_device {int io_lines; int /*<<< orphan*/  dev; TYPE_1__** resource; int /*<<< orphan*/  irq; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; int if_port; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  irq; } ;
typedef  int /*<<< orphan*/  mace_private ;
struct TYPE_2__ {unsigned int start; } ;

/* Variables and functions */
 int ENODEV ; 
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  MACE_CHIPIDH ; 
 int /*<<< orphan*/  MACE_CHIPIDL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * if_names ; 
 int if_port ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mace_interrupt ; 
 char FUNC4 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pcmcia_device*) ; 
 int FUNC9 (struct pcmcia_device*) ; 
 size_t FUNC10 (struct pcmcia_device*,int,int /*<<< orphan*/ **) ; 
 int FUNC11 (struct pcmcia_device*) ; 
 int FUNC12 (struct pcmcia_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int FUNC14 (struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct pcmcia_device *link)
{
  struct net_device *dev = link->priv;
  mace_private *lp = FUNC7(dev);
  u8 *buf;
  size_t len;
  int i, ret;
  unsigned int ioaddr;

  FUNC1(&link->dev, "nmclan_config\n");

  link->io_lines = 5;
  ret = FUNC11(link);
  if (ret)
	  goto failed;
  ret = FUNC12(link, mace_interrupt);
  if (ret)
	  goto failed;
  ret = FUNC9(link);
  if (ret)
	  goto failed;

  dev->irq = link->irq;
  dev->base_addr = link->resource[0]->start;

  ioaddr = dev->base_addr;

  /* Read the ethernet address from the CIS. */
  len = FUNC10(link, 0x80, &buf);
  if (!buf || len < ETH_ALEN) {
	  FUNC2(buf);
	  goto failed;
  }
  FUNC5(dev->dev_addr, buf, ETH_ALEN);
  FUNC2(buf);

  /* Verify configuration by reading the MACE ID. */
  {
    char sig[2];

    sig[0] = FUNC4(lp, ioaddr, MACE_CHIPIDL);
    sig[1] = FUNC4(lp, ioaddr, MACE_CHIPIDH);
    if ((sig[0] == 0x40) && ((sig[1] & 0x0F) == 0x09)) {
      FUNC1(&link->dev, "nmclan_cs configured: mace id=%x %x\n",
	    sig[0], sig[1]);
    } else {
      FUNC13("mace id not found: %x %x should be 0x40 0x?9\n",
		sig[0], sig[1]);
      return -ENODEV;
    }
  }

  if(FUNC3(lp, ioaddr, dev->dev_addr) == -1)
  	goto failed;

  /* The if_port symbol can be set when the module is loaded */
  if (if_port <= 2)
    dev->if_port = if_port;
  else
    FUNC13("invalid if_port requested\n");

  FUNC0(dev, &link->dev);

  i = FUNC14(dev);
  if (i != 0) {
    FUNC13("register_netdev() failed\n");
    goto failed;
  }

  FUNC6(dev, "nmclan: port %#3lx, irq %d, %s port, hw_addr %pM\n",
	      dev->base_addr, dev->irq, if_names[dev->if_port], dev->dev_addr);
  return 0;

failed:
	FUNC8(link);
	return -ENODEV;
}