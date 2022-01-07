
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_dev {int dummy; } ;


 int CODA_REG_BIT_BUSY ;
 unsigned long coda_read (struct coda_dev*,int ) ;

__attribute__((used)) static inline unsigned long coda_isbusy(struct coda_dev *dev)
{
 return coda_read(dev, CODA_REG_BIT_BUSY);
}
