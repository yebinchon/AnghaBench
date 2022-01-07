
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smi_dev {int dummy; } ;


 int ALL_INT ;
 int MPEG2_CTRL_A ;
 int MPEG2_CTRL_B ;
 int MSI_INT_ENA_CLR ;
 int MSI_INT_STATUS ;
 int MSI_INT_STATUS_CLR ;
 int MUX_MODE_CTRL ;
 int PERIPHERAL_CTRL ;
 int VIDEO_CTRL_STATUS_A ;
 int VIDEO_CTRL_STATUS_B ;
 int msleep (int) ;
 int rbPaMSDtvNoGpio ;
 int rbPaMSMask ;
 int rbPbMSDtvNoGpio ;
 int rbPbMSMask ;
 int smi_clear (int ,int) ;
 int smi_read (int ) ;
 int smi_set (int ,int) ;
 int smi_write (int ,int) ;

__attribute__((used)) static int smi_hw_init(struct smi_dev *dev)
{
 u32 port_mux, port_ctrl, int_stat;


 port_mux = smi_read(MUX_MODE_CTRL);
 port_mux &= ~(rbPaMSMask);
 port_mux |= rbPaMSDtvNoGpio;
 port_mux &= ~(rbPbMSMask);
 port_mux |= rbPbMSDtvNoGpio;
 port_mux &= ~(0x0f0000);
 port_mux |= 0x50000;
 smi_write(MUX_MODE_CTRL, port_mux);



 port_ctrl = smi_read(VIDEO_CTRL_STATUS_A);
 port_ctrl &= ~0x01;
 smi_write(VIDEO_CTRL_STATUS_A, port_ctrl);
 port_ctrl = smi_read(MPEG2_CTRL_A);
 port_ctrl &= ~0x40;
 port_ctrl |= 0x80;
 smi_write(MPEG2_CTRL_A, port_ctrl);

 port_ctrl = smi_read(VIDEO_CTRL_STATUS_B);
 port_ctrl &= ~0x01;
 smi_write(VIDEO_CTRL_STATUS_B, port_ctrl);
 port_ctrl = smi_read(MPEG2_CTRL_B);
 port_ctrl &= ~0x40;
 port_ctrl |= 0x80;
 smi_write(MPEG2_CTRL_B, port_ctrl);


 smi_write(MSI_INT_ENA_CLR, ALL_INT);
 int_stat = smi_read(MSI_INT_STATUS);
 smi_write(MSI_INT_STATUS_CLR, int_stat);


 smi_clear(PERIPHERAL_CTRL, 0x0303);
 msleep(50);
 smi_set(PERIPHERAL_CTRL, 0x0101);
 return 0;
}
