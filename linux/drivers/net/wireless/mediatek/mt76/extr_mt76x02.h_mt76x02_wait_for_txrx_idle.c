
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int dummy; } ;


 int MT_MAC_STATUS ;
 int MT_MAC_STATUS_RX ;
 int MT_MAC_STATUS_TX ;
 int __mt76_poll_msec (struct mt76_dev*,int ,int,int ,int) ;

__attribute__((used)) static inline bool
mt76x02_wait_for_txrx_idle(struct mt76_dev *dev)
{
 return __mt76_poll_msec(dev, MT_MAC_STATUS,
    MT_MAC_STATUS_TX | MT_MAC_STATUS_RX,
    0, 100);
}
