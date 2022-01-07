
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int ctrlmode; } ;
struct m_can_classdev {int version; TYPE_3__* ops; TYPE_2__ can; TYPE_1__* mcfg; } ;
struct TYPE_6__ {int (* init ) (struct m_can_classdev*) ;} ;
struct TYPE_4__ {int off; int num; } ;


 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_CTRLMODE_FD ;
 int CAN_CTRLMODE_FD_NON_ISO ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int CCCR_BRSE ;
 int CCCR_CME_CANFD_BRS ;
 int CCCR_CME_MASK ;
 int CCCR_CME_SHIFT ;
 int CCCR_CMR_MASK ;
 int CCCR_CMR_SHIFT ;
 int CCCR_FDOE ;
 int CCCR_MON ;
 int CCCR_NISO ;
 int CCCR_TEST ;
 int ILS_ALL_INT0 ;
 int IR_ALL_INT ;
 int IR_ERR_LEC_30X ;
 int IR_ERR_LEC_31X ;
 size_t MRAM_RXF0 ;
 size_t MRAM_RXF1 ;
 size_t MRAM_TXB ;
 size_t MRAM_TXE ;
 int M_CAN_CCCR ;
 int M_CAN_GFC ;
 int M_CAN_IE ;
 int M_CAN_ILS ;
 int M_CAN_IR ;
 int M_CAN_RXESC ;
 int M_CAN_RXESC_64BYTES ;
 int M_CAN_RXF0C ;
 int M_CAN_RXF1C ;
 int M_CAN_TEST ;
 int M_CAN_TXBC ;
 int M_CAN_TXEFC ;
 int M_CAN_TXESC ;
 int RXFC_FS_SHIFT ;
 int TEST_LBCK ;
 int TXBC_NDTB_SHIFT ;
 int TXBC_TFQS_SHIFT ;
 int TXEFC_EFS_MASK ;
 int TXEFC_EFS_SHIFT ;
 int TXESC_TBDS_64BYTES ;
 int m_can_config_endisable (struct m_can_classdev*,int) ;
 int m_can_read (struct m_can_classdev*,int ) ;
 int m_can_set_bittiming (struct net_device*) ;
 int m_can_write (struct m_can_classdev*,int ,int) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;
 int stub1 (struct m_can_classdev*) ;

__attribute__((used)) static void m_can_chip_config(struct net_device *dev)
{
 struct m_can_classdev *cdev = netdev_priv(dev);
 u32 cccr, test;

 m_can_config_endisable(cdev, 1);


 m_can_write(cdev, M_CAN_RXESC, M_CAN_RXESC_64BYTES);


 m_can_write(cdev, M_CAN_GFC, 0x0);

 if (cdev->version == 30) {

  m_can_write(cdev, M_CAN_TXBC, (1 << TXBC_NDTB_SHIFT) |
    cdev->mcfg[MRAM_TXB].off);
 } else {

  m_can_write(cdev, M_CAN_TXBC,
       (cdev->mcfg[MRAM_TXB].num << TXBC_TFQS_SHIFT) |
       (cdev->mcfg[MRAM_TXB].off));
 }


 m_can_write(cdev, M_CAN_TXESC, TXESC_TBDS_64BYTES);


 if (cdev->version == 30) {
  m_can_write(cdev, M_CAN_TXEFC, (1 << TXEFC_EFS_SHIFT) |
    cdev->mcfg[MRAM_TXE].off);
 } else {

  m_can_write(cdev, M_CAN_TXEFC,
       ((cdev->mcfg[MRAM_TXE].num << TXEFC_EFS_SHIFT)
        & TXEFC_EFS_MASK) |
       cdev->mcfg[MRAM_TXE].off);
 }


 m_can_write(cdev, M_CAN_RXF0C,
      (cdev->mcfg[MRAM_RXF0].num << RXFC_FS_SHIFT) |
       cdev->mcfg[MRAM_RXF0].off);

 m_can_write(cdev, M_CAN_RXF1C,
      (cdev->mcfg[MRAM_RXF1].num << RXFC_FS_SHIFT) |
       cdev->mcfg[MRAM_RXF1].off);

 cccr = m_can_read(cdev, M_CAN_CCCR);
 test = m_can_read(cdev, M_CAN_TEST);
 test &= ~TEST_LBCK;
 if (cdev->version == 30) {


  cccr &= ~(CCCR_TEST | CCCR_MON |
   (CCCR_CMR_MASK << CCCR_CMR_SHIFT) |
   (CCCR_CME_MASK << CCCR_CME_SHIFT));

  if (cdev->can.ctrlmode & CAN_CTRLMODE_FD)
   cccr |= CCCR_CME_CANFD_BRS << CCCR_CME_SHIFT;

 } else {

  cccr &= ~(CCCR_TEST | CCCR_MON | CCCR_BRSE | CCCR_FDOE |
     CCCR_NISO);


  if (cdev->can.ctrlmode & CAN_CTRLMODE_FD_NON_ISO)
   cccr |= CCCR_NISO;

  if (cdev->can.ctrlmode & CAN_CTRLMODE_FD)
   cccr |= (CCCR_BRSE | CCCR_FDOE);
 }


 if (cdev->can.ctrlmode & CAN_CTRLMODE_LOOPBACK) {
  cccr |= CCCR_TEST | CCCR_MON;
  test |= TEST_LBCK;
 }


 if (cdev->can.ctrlmode & CAN_CTRLMODE_LISTENONLY)
  cccr |= CCCR_MON;


 m_can_write(cdev, M_CAN_CCCR, cccr);
 m_can_write(cdev, M_CAN_TEST, test);


 m_can_write(cdev, M_CAN_IR, IR_ALL_INT);
 if (!(cdev->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING))
  if (cdev->version == 30)
   m_can_write(cdev, M_CAN_IE, IR_ALL_INT &
        ~(IR_ERR_LEC_30X));
  else
   m_can_write(cdev, M_CAN_IE, IR_ALL_INT &
        ~(IR_ERR_LEC_31X));
 else
  m_can_write(cdev, M_CAN_IE, IR_ALL_INT);


 m_can_write(cdev, M_CAN_ILS, ILS_ALL_INT0);


 m_can_set_bittiming(dev);

 m_can_config_endisable(cdev, 0);

 if (cdev->ops->init)
  cdev->ops->init(cdev);
}
