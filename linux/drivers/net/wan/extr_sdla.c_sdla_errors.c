
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct _dlci_stat {int flags; int dlci; } ;


 int SDLA_DLCI_ACTIVE ;
 int SDLA_DLCI_DELETED ;
 int SDLA_DLCI_NEW ;
 int SDLA_INFORMATION_WRITE ;
 char SDLA_MODEM_CTS_LOW ;
 char SDLA_MODEM_DCD_LOW ;
 int netdev_dbg (struct net_device*,char*,int,int) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*,...) ;
 int pr_cont (char*,...) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void sdla_errors(struct net_device *dev, int cmd, int dlci, int ret, int len, void *data)
{
 struct _dlci_stat *pstatus;
 short *pdlci;
 int i;
 char *state, line[30];

 switch (ret)
 {
  case 130:
   state = data;
   if (*state & SDLA_MODEM_DCD_LOW)
    netdev_info(dev, "Modem DCD unexpectedly low!\n");
   if (*state & SDLA_MODEM_CTS_LOW)
    netdev_info(dev, "Modem CTS unexpectedly low!\n");

   break;

  case 136:
   netdev_info(dev, "Channel became inoperative!\n");

   break;

  case 135:
   netdev_info(dev, "Channel became operative!\n");

   break;

  case 132:
   netdev_info(dev, "Status change reported by Access Node\n");
   len /= sizeof(struct _dlci_stat);
   for(pstatus = data, i=0;i < len;i++,pstatus++)
   {
    if (pstatus->flags & SDLA_DLCI_NEW)
     state = "new";
    else if (pstatus->flags & SDLA_DLCI_DELETED)
     state = "deleted";
    else if (pstatus->flags & SDLA_DLCI_ACTIVE)
     state = "active";
    else
    {
     sprintf(line, "unknown status: %02X", pstatus->flags);
     state = line;
    }
    netdev_info(dev, "DLCI %i: %s\n",
         pstatus->dlci, state);

   }
   break;

  case 131:
   netdev_info(dev, "Received unknown DLCIs:");
   len /= sizeof(short);
   for(pdlci = data,i=0;i < len;i++,pdlci++)
    pr_cont(" %i", *pdlci);
   pr_cont("\n");
   break;

  case 128:
   netdev_err(dev, "Command timed out!\n");
   break;

  case 139:
   netdev_info(dev, "Bc/CIR overflow, acceptable size is %i\n",
        len);
   break;

  case 138:
   netdev_info(dev, "Buffer size over specified max of %i\n",
        len);
   break;

  case 137:
  case 133:
  case 134:
  case 129:
   if (cmd == SDLA_INFORMATION_WRITE)
    break;


  default:
   netdev_dbg(dev, "Cmd 0x%02X generated return code 0x%02X\n",
       cmd, ret);

   break;
 }
}
