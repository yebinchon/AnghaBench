
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mace_private ;


 int ETH_ALEN ;
 int MACE_BIUCC ;
 int MACE_FIFOCC ;
 int MACE_IAC ;
 int MACE_IAC_ADDRCHG ;
 int MACE_IAC_PHYADDR ;
 int MACE_IMR ;
 int MACE_MACCC ;
 int MACE_PADR ;
 int MACE_PHYCC ;
 int MACE_PLSCC ;
 int MACE_RCVFC ;
 int if_port ;
 int mace_read (int *,unsigned int,int ) ;
 int mace_write (int *,unsigned int,int ,int) ;
 int pr_err (char*) ;
 int udelay (int) ;

__attribute__((used)) static int mace_init(mace_private *lp, unsigned int ioaddr, char *enet_addr)
{
  int i;
  int ct = 0;


  mace_write(lp, ioaddr, MACE_BIUCC, 1);
  while (mace_read(lp, ioaddr, MACE_BIUCC) & 0x01) {
                                                                       ;
    if(++ct > 500)
    {
 pr_err("reset failed, card removed?\n");
     return -1;
    }
    udelay(1);
  }
  mace_write(lp, ioaddr, MACE_BIUCC, 0);


  mace_write(lp, ioaddr, MACE_FIFOCC, 0x0F);

  mace_write(lp,ioaddr, MACE_RCVFC, 0);
  mace_write(lp, ioaddr, MACE_IMR, 0xFF);
  switch (if_port) {
    case 1:
      mace_write(lp, ioaddr, MACE_PLSCC, 0x02);
      break;
    case 2:
      mace_write(lp, ioaddr, MACE_PLSCC, 0x00);
      break;
    default:
      mace_write(lp, ioaddr, MACE_PHYCC, 4);



      break;
  }

  mace_write(lp, ioaddr, MACE_IAC, MACE_IAC_ADDRCHG | MACE_IAC_PHYADDR);

  ct = 0;
  while (mace_read(lp, ioaddr, MACE_IAC) & MACE_IAC_ADDRCHG)
  {
   if(++ ct > 500)
   {
  pr_err("ADDRCHG timeout, card removed?\n");
    return -1;
   }
  }

  for (i = 0; i < ETH_ALEN; i++)
    mace_write(lp, ioaddr, MACE_PADR, enet_addr[i]);




  mace_write(lp, ioaddr, MACE_MACCC, 0x00);
  return 0;
}
