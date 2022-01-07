
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 int CHELSIO_CHIP_RELEASE (int ) ;
 int CHELSIO_CHIP_VERSION (int ) ;

__attribute__((used)) static inline unsigned int mk_adap_vers(struct adapter *ap)
{
 return CHELSIO_CHIP_VERSION(ap->params.chip) |
  (CHELSIO_CHIP_RELEASE(ap->params.chip) << 10) | (1 << 16);
}
