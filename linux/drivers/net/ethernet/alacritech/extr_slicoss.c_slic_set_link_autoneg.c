
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct slic_device {scalar_t__ is_fiber; TYPE_1__* pdev; } ;
struct TYPE_2__ {unsigned int subsystem_device; } ;


 int ADVERTISE_1000FULL ;
 int ADVERTISE_1000XFULL ;
 int ADVERTISE_1000XPAUSE ;
 int ADVERTISE_1000XPSE_ASYM ;
 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int ADVERTISE_CSMA ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_RESET ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_CTRL1000 ;
 unsigned int PCI_SUBDEVICE_ID_ALACRITECH_CICADA ;
 int SLIC_MIICR_REG_16 ;
 int SLIC_MRV_REG16_XOVERON ;
 int SLIC_REG_WPHY ;
 int slic_write (struct slic_device*,int ,int) ;

__attribute__((used)) static void slic_set_link_autoneg(struct slic_device *sdev)
{
 unsigned int subid = sdev->pdev->subsystem_device;
 u32 val;

 if (sdev->is_fiber) {




  val = MII_ADVERTISE << 16 | ADVERTISE_1000XFULL |
        ADVERTISE_1000XPAUSE | ADVERTISE_1000XPSE_ASYM;

  slic_write(sdev, SLIC_REG_WPHY, val);

  val = MII_BMCR << 16 | BMCR_RESET | BMCR_ANENABLE |
        BMCR_ANRESTART;
  slic_write(sdev, SLIC_REG_WPHY, val);
 } else {




  val = MII_ADVERTISE << 16 | ADVERTISE_100FULL |
        ADVERTISE_100HALF | ADVERTISE_10FULL | ADVERTISE_10HALF;

  val |= ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM;

  val |= ADVERTISE_CSMA;
  slic_write(sdev, SLIC_REG_WPHY, val);


  val = MII_CTRL1000 << 16 | ADVERTISE_1000FULL;
  slic_write(sdev, SLIC_REG_WPHY, val);

  if (subid != PCI_SUBDEVICE_ID_ALACRITECH_CICADA) {

   val = SLIC_MIICR_REG_16 | SLIC_MRV_REG16_XOVERON;
   slic_write(sdev, SLIC_REG_WPHY, val);


   val = MII_BMCR << 16 | BMCR_RESET | BMCR_ANENABLE |
         BMCR_ANRESTART;
   slic_write(sdev, SLIC_REG_WPHY, val);
  } else {

   val = MII_BMCR << 16 | BMCR_ANENABLE | BMCR_ANRESTART;
   slic_write(sdev, SLIC_REG_WPHY, val);
  }
 }
}
