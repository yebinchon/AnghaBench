
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_ao_cec_device {scalar_t__ base; } ;
struct cec_adapter {struct meson_ao_cec_device* priv; } ;


 int CEC_GEN_CNTL_CLK_CTRL_MASK ;
 int CEC_GEN_CNTL_CLK_ENABLE ;
 scalar_t__ CEC_GEN_CNTL_REG ;
 int CEC_GEN_CNTL_RESET ;
 int CEC_SIGNAL_FREE_TIME_NEW_INITIATOR ;
 int CEC_SIGNAL_FREE_TIME_NEXT_XFER ;
 int CEC_SIGNAL_FREE_TIME_RETRY ;
 int FIELD_PREP (int ,int ) ;
 int meson_ao_cec_arbit_bit_time_set (struct meson_ao_cec_device*,int ,int) ;
 int meson_ao_cec_clear (struct meson_ao_cec_device*) ;
 int meson_ao_cec_irq_setup (struct meson_ao_cec_device*,int) ;
 int udelay (int) ;
 int writel_bits_relaxed (int ,int ,scalar_t__) ;

__attribute__((used)) static int meson_ao_cec_adap_enable(struct cec_adapter *adap, bool enable)
{
 struct meson_ao_cec_device *ao_cec = adap->priv;
 int ret;

 meson_ao_cec_irq_setup(ao_cec, 0);

 writel_bits_relaxed(CEC_GEN_CNTL_RESET, CEC_GEN_CNTL_RESET,
       ao_cec->base + CEC_GEN_CNTL_REG);

 if (!enable)
  return 0;


 writel_bits_relaxed(CEC_GEN_CNTL_CLK_CTRL_MASK,
       FIELD_PREP(CEC_GEN_CNTL_CLK_CTRL_MASK,
           CEC_GEN_CNTL_CLK_ENABLE),
       ao_cec->base + CEC_GEN_CNTL_REG);

 udelay(100);


 writel_bits_relaxed(CEC_GEN_CNTL_RESET, 0,
       ao_cec->base + CEC_GEN_CNTL_REG);


 ret = meson_ao_cec_clear(ao_cec);
 if (ret)
  return ret;


 ret = meson_ao_cec_arbit_bit_time_set(ao_cec,
     CEC_SIGNAL_FREE_TIME_RETRY,
     0x118);
 if (ret)
  return ret;
 ret = meson_ao_cec_arbit_bit_time_set(ao_cec,
     CEC_SIGNAL_FREE_TIME_NEW_INITIATOR,
     0x000);
 if (ret)
  return ret;
 ret = meson_ao_cec_arbit_bit_time_set(ao_cec,
     CEC_SIGNAL_FREE_TIME_NEXT_XFER,
     0x2aa);
 if (ret)
  return ret;

 meson_ao_cec_irq_setup(ao_cec, 1);

 return 0;
}
