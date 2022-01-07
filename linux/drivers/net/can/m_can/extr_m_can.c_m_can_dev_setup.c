
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int ctrlmode_supported; int * data_bittiming_const; int * bittiming_const; int do_get_berr_counter; int do_set_mode; } ;
struct m_can_classdev {int version; TYPE_2__* ops; int dev; TYPE_1__ can; int * data_timing; int * bit_timing; int napi; int is_peripheral; struct net_device* net; } ;
struct TYPE_4__ {int (* init ) (struct m_can_classdev*) ;} ;


 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_CTRLMODE_FD ;
 int CAN_CTRLMODE_FD_NON_ISO ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int EINVAL ;
 int M_CAN_NAPI_WEIGHT ;
 int can_set_static_ctrlmode (struct net_device*,int) ;
 int dev_err (int ,char*,int) ;
 int m_can_bittiming_const_30X ;
 int m_can_bittiming_const_31X ;
 int m_can_check_core_release (struct m_can_classdev*) ;
 int m_can_data_bittiming_const_30X ;
 int m_can_data_bittiming_const_31X ;
 int m_can_get_berr_counter ;
 int m_can_niso_supported (struct m_can_classdev*) ;
 int m_can_poll ;
 int m_can_set_mode ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int stub1 (struct m_can_classdev*) ;

__attribute__((used)) static int m_can_dev_setup(struct m_can_classdev *m_can_dev)
{
 struct net_device *dev = m_can_dev->net;
 int m_can_version;

 m_can_version = m_can_check_core_release(m_can_dev);

 if (!m_can_version) {
  dev_err(m_can_dev->dev, "Unsupported version number: %2d",
   m_can_version);
  return -EINVAL;
 }

 if (!m_can_dev->is_peripheral)
  netif_napi_add(dev, &m_can_dev->napi,
          m_can_poll, M_CAN_NAPI_WEIGHT);


 m_can_dev->version = m_can_version;
 m_can_dev->can.do_set_mode = m_can_set_mode;
 m_can_dev->can.do_get_berr_counter = m_can_get_berr_counter;


 m_can_dev->can.ctrlmode_supported = CAN_CTRLMODE_LOOPBACK |
     CAN_CTRLMODE_LISTENONLY |
     CAN_CTRLMODE_BERR_REPORTING |
     CAN_CTRLMODE_FD;


 switch (m_can_dev->version) {
 case 30:

  can_set_static_ctrlmode(dev, CAN_CTRLMODE_FD_NON_ISO);
  m_can_dev->can.bittiming_const = m_can_dev->bit_timing ?
   m_can_dev->bit_timing : &m_can_bittiming_const_30X;

  m_can_dev->can.data_bittiming_const = m_can_dev->data_timing ?
      m_can_dev->data_timing :
      &m_can_data_bittiming_const_30X;
  break;
 case 31:

  can_set_static_ctrlmode(dev, CAN_CTRLMODE_FD_NON_ISO);
  m_can_dev->can.bittiming_const = m_can_dev->bit_timing ?
   m_can_dev->bit_timing : &m_can_bittiming_const_31X;

  m_can_dev->can.data_bittiming_const = m_can_dev->data_timing ?
      m_can_dev->data_timing :
      &m_can_data_bittiming_const_31X;
  break;
 case 32:
  m_can_dev->can.bittiming_const = m_can_dev->bit_timing ?
   m_can_dev->bit_timing : &m_can_bittiming_const_31X;

  m_can_dev->can.data_bittiming_const = m_can_dev->data_timing ?
      m_can_dev->data_timing :
      &m_can_data_bittiming_const_31X;

  m_can_dev->can.ctrlmode_supported |=
      (m_can_niso_supported(m_can_dev)
      ? CAN_CTRLMODE_FD_NON_ISO
      : 0);
  break;
 default:
  dev_err(m_can_dev->dev, "Unsupported version number: %2d",
   m_can_dev->version);
  return -EINVAL;
 }

 if (m_can_dev->ops->init)
  m_can_dev->ops->init(m_can_dev);

 return 0;
}
