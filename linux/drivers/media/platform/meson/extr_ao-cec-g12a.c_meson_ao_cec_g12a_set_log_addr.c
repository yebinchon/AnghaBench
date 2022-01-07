
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct meson_ao_cec_g12a_device {int regmap_cec; } ;
struct cec_adapter {struct meson_ao_cec_g12a_device* priv; } ;


 int BIT (int) ;
 int CECB_LADD_HIGH ;
 int CECB_LADD_LOW ;
 int CEC_LOG_ADDR_INVALID ;
 int CEC_LOG_ADDR_UNREGISTERED ;
 int EIO ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int
meson_ao_cec_g12a_set_log_addr(struct cec_adapter *adap, u8 logical_addr)
{
 struct meson_ao_cec_g12a_device *ao_cec = adap->priv;
 int ret = 0;

 if (logical_addr == CEC_LOG_ADDR_INVALID) {

  regmap_write(ao_cec->regmap_cec, CECB_LADD_LOW, 0);
  regmap_write(ao_cec->regmap_cec, CECB_LADD_HIGH, 0);

  return 0;
 } else if (logical_addr < 8) {
  ret = regmap_update_bits(ao_cec->regmap_cec, CECB_LADD_LOW,
      BIT(logical_addr),
      BIT(logical_addr));
 } else {
  ret = regmap_update_bits(ao_cec->regmap_cec, CECB_LADD_HIGH,
      BIT(logical_addr - 8),
      BIT(logical_addr - 8));
 }


 ret |= regmap_update_bits(ao_cec->regmap_cec, CECB_LADD_HIGH,
      BIT(CEC_LOG_ADDR_UNREGISTERED - 8),
      BIT(CEC_LOG_ADDR_UNREGISTERED - 8));

 return ret ? -EIO : 0;
}
