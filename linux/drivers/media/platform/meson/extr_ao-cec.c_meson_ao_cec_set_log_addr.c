
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct meson_ao_cec_device {int dummy; } ;
struct cec_adapter {struct meson_ao_cec_device* priv; } ;


 int CEC_LOGICAL_ADDR0 ;
 int CEC_LOG_ADDR_INVALID ;
 int LOGICAL_ADDR_DISABLE ;
 int LOGICAL_ADDR_MASK ;
 int LOGICAL_ADDR_VALID ;
 int meson_ao_cec_clear (struct meson_ao_cec_device*) ;
 int meson_ao_cec_write (struct meson_ao_cec_device*,int ,int,int*) ;
 int udelay (int) ;

__attribute__((used)) static int meson_ao_cec_set_log_addr(struct cec_adapter *adap, u8 logical_addr)
{
 struct meson_ao_cec_device *ao_cec = adap->priv;
 int ret = 0;

 meson_ao_cec_write(ao_cec, CEC_LOGICAL_ADDR0,
      LOGICAL_ADDR_DISABLE, &ret);
 if (ret)
  return ret;

 ret = meson_ao_cec_clear(ao_cec);
 if (ret)
  return ret;

 if (logical_addr == CEC_LOG_ADDR_INVALID)
  return 0;

 meson_ao_cec_write(ao_cec, CEC_LOGICAL_ADDR0,
      logical_addr & LOGICAL_ADDR_MASK, &ret);
 if (ret)
  return ret;

 udelay(100);

 meson_ao_cec_write(ao_cec, CEC_LOGICAL_ADDR0,
      (logical_addr & LOGICAL_ADDR_MASK) |
      LOGICAL_ADDR_VALID, &ret);

 return ret;
}
