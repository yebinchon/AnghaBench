
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct m_can_classdev {int dummy; } ;
struct can_berr_counter {unsigned int rxerr; unsigned int txerr; } ;


 unsigned int ECR_REC_MASK ;
 unsigned int ECR_REC_SHIFT ;
 unsigned int ECR_TEC_MASK ;
 unsigned int ECR_TEC_SHIFT ;
 int M_CAN_ECR ;
 unsigned int m_can_read (struct m_can_classdev*,int ) ;
 struct m_can_classdev* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int __m_can_get_berr_counter(const struct net_device *dev,
        struct can_berr_counter *bec)
{
 struct m_can_classdev *cdev = netdev_priv(dev);
 unsigned int ecr;

 ecr = m_can_read(cdev, M_CAN_ECR);
 bec->rxerr = (ecr & ECR_REC_MASK) >> ECR_REC_SHIFT;
 bec->txerr = (ecr & ECR_TEC_MASK) >> ECR_TEC_SHIFT;

 return 0;
}
