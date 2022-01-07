
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct netup_card_info {int rev; } ;
struct firmware {int dummy; } ;
struct cx23885_tsport {int gen_ctrl_val; int ts_clk_en_val; int vld_misc_val; int hw_sop_ctrl_val; void* src_sel_val; } ;
struct cx23885_dev {int board; TYPE_1__* pci; TYPE_2__* i2c_bus; int v4l2_dev; TYPE_3__* sd_cx25840; int clk_freq; struct cx23885_tsport ts2; struct cx23885_tsport ts1; } ;
struct altera_config {char* action; int jtag_io; struct cx23885_dev* dev; } ;
typedef int eeprom ;
struct TYPE_10__ {int addr; } ;
struct TYPE_9__ {int grp_id; } ;
struct TYPE_8__ {scalar_t__ i2c_rc; int i2c_adap; TYPE_6__ i2c_client; } ;
struct TYPE_7__ {int dev; } ;
 int CX23885_HW_AV_CORE ;
 void* CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO ;
 int altera_init (struct altera_config*,struct firmware const*) ;
 int core ;
 int cx_write (int,int) ;
 int enable_885_ir ;
 int hauppauge_eeprom (struct cx23885_dev*,int*) ;
 int load_fw ;
 int netup_card_rev ;
 int netup_get_card_info (int *,struct netup_card_info*) ;
 int netup_initialize (struct cx23885_dev*) ;
 int netup_jtag_io ;
 int pr_err (char*,char const*) ;
 int pr_info (char*,int ,char const*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 int tbs_card_init (struct cx23885_dev*) ;
 int tveeprom_read (TYPE_6__*,int*,int) ;
 TYPE_3__* v4l2_i2c_new_subdev (int *,int *,char*,int,int *) ;
 int v4l2_set_subdev_hostdata (TYPE_3__*,int *) ;
 int v4l2_subdev_call (TYPE_3__*,int ,int ) ;
 int viewcast_eeprom (struct cx23885_dev*,int*) ;

void cx23885_card_setup(struct cx23885_dev *dev)
{
 struct cx23885_tsport *ts1 = &dev->ts1;
 struct cx23885_tsport *ts2 = &dev->ts2;

 static u8 eeprom[256];

 if (dev->i2c_bus[0].i2c_rc == 0) {
  dev->i2c_bus[0].i2c_client.addr = 0xa0 >> 1;
  tveeprom_read(&dev->i2c_bus[0].i2c_client,
         eeprom, sizeof(eeprom));
 }

 switch (dev->board) {
 case 171:
  if (dev->i2c_bus[0].i2c_rc == 0) {
   if (eeprom[0x80] != 0x84)
    hauppauge_eeprom(dev, eeprom+0xc0);
   else
    hauppauge_eeprom(dev, eeprom+0x80);
  }
  break;
 case 163:
 case 162:
 case 164:
  if (dev->i2c_bus[0].i2c_rc == 0)
   hauppauge_eeprom(dev, eeprom+0x80);
  break;
 case 160:
 case 159:
 case 173:
 case 161:
 case 167:
 case 166:
 case 170:
 case 169:
 case 172:
 case 158:
 case 165:
 case 157:
 case 150:
 case 155:
 case 156:
 case 168:
 case 149:
 case 152:
 case 151:
 case 154:
 case 153:
  if (dev->i2c_bus[0].i2c_rc == 0)
   hauppauge_eeprom(dev, eeprom+0xc0);
  break;
 case 129:
 case 128:
  dev->i2c_bus[1].i2c_client.addr = 0xa0 >> 1;
  tveeprom_read(&dev->i2c_bus[1].i2c_client,
         eeprom, sizeof(eeprom));
  if (dev->i2c_bus[0].i2c_rc == 0)
   viewcast_eeprom(dev, eeprom);
  break;
 }

 switch (dev->board) {
 case 188:

  ts1->gen_ctrl_val = 0x4;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;


  ts2->gen_ctrl_val = 0x10e;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 177:
 case 176:
 case 175:
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;

 case 178:
  ts1->gen_ctrl_val = 0xc;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 158:
 case 160:


  ts1->gen_ctrl_val = 0x10e;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;


  ts1->vld_misc_val = 0x2000;
  ts1->hw_sop_ctrl_val = (0x47 << 16 | 188 << 4 | 0xc);
  cx_write(0x130184, 0xc);


  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 136:
  ts1->gen_ctrl_val = 0x4;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 132:
 case 131:
 case 179:
 case 137:
 case 181:
 case 184:
 case 130:
 case 185:
  ts1->gen_ctrl_val = 0x5;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 139:
 case 138:
 case 133:
  ts1->gen_ctrl_val = 0xc;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 135:
 case 134:
  ts1->gen_ctrl_val = 0xc;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  tbs_card_init(dev);
  break;
 case 142:
 case 144:
 case 141:
  ts1->gen_ctrl_val = 0x5;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 140:
  ts1->gen_ctrl_val = 0x5;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 157:
  ts1->gen_ctrl_val = 0xc;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 150:
  ts1->gen_ctrl_val = 0xc;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 182:
 case 180:
  ts1->gen_ctrl_val = 0x5;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  ts2->gen_ctrl_val = 0x8;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 183:
  ts1->gen_ctrl_val = 0x5;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  ts2->gen_ctrl_val = 0xe;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 156:
 case 149:
  ts1->gen_ctrl_val = 0x5;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 168:
 case 152:
 case 151:
 case 154:
 case 153:
  ts1->gen_ctrl_val = 0xc;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 171:
 case 163:
 case 162:
 case 159:
 case 173:
 case 161:
 case 164:
 case 155:
 case 148:
 case 146:
 case 147:
 case 187:
 case 167:
 case 166:
 case 170:
 case 169:
 case 172:
 case 186:
 case 165:
 case 174:
 default:
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
 }




 switch (dev->board) {
 case 132:

  if (!enable_885_ir)
   break;

 case 171:
 case 160:
 case 155:
 case 159:
 case 161:
 case 148:
 case 146:
 case 147:
 case 187:
 case 139:
 case 138:
 case 186:
 case 170:
 case 169:
 case 168:
 case 152:
 case 154:
 case 167:
 case 158:
 case 142:
 case 144:
 case 165:
 case 145:
 case 174:
 case 163:
 case 143:
 case 141:
 case 133:
 case 188:
 case 135:
 case 134:
 case 182:
 case 181:
 case 184:
 case 130:
 case 185:
 case 183:
 case 180:
 case 129:
 case 128:
  dev->sd_cx25840 = v4l2_i2c_new_subdev(&dev->v4l2_dev,
    &dev->i2c_bus[2].i2c_adap,
    "cx25840", 0x88 >> 1, ((void*)0));
  if (dev->sd_cx25840) {

   v4l2_set_subdev_hostdata(dev->sd_cx25840,
      &dev->clk_freq);

   dev->sd_cx25840->grp_id = CX23885_HW_AV_CORE;
   v4l2_subdev_call(dev->sd_cx25840, core, load_fw);
  }
  break;
 }

 switch (dev->board) {
 case 129:
  v4l2_i2c_new_subdev(&dev->v4l2_dev,
    &dev->i2c_bus[0].i2c_adap,
    "cs3308", 0x82 >> 1, ((void*)0));
  break;
 case 128:

  v4l2_i2c_new_subdev(&dev->v4l2_dev,
    &dev->i2c_bus[0].i2c_adap,
    "cs3308", 0x80 >> 1, ((void*)0));

  v4l2_i2c_new_subdev(&dev->v4l2_dev,
    &dev->i2c_bus[0].i2c_adap,
    "cs3308", 0x82 >> 1, ((void*)0));
  break;
 }


 switch (dev->board) {
 case 139:
  netup_initialize(dev);
  break;
 case 138: {
  int ret;
  const struct firmware *fw;
  const char *filename = "dvb-netup-altera-01.fw";
  char *action = "configure";
  static struct netup_card_info cinfo;
  struct altera_config netup_config = {
   .dev = dev,
   .action = action,
   .jtag_io = netup_jtag_io,
  };

  netup_initialize(dev);

  netup_get_card_info(&dev->i2c_bus[0].i2c_adap, &cinfo);
  if (netup_card_rev)
   cinfo.rev = netup_card_rev;

  switch (cinfo.rev) {
  case 0x4:
   filename = "dvb-netup-altera-04.fw";
   break;
  default:
   filename = "dvb-netup-altera-01.fw";
   break;
  }
  pr_info("NetUP card rev=0x%x fw_filename=%s\n",
   cinfo.rev, filename);

  ret = request_firmware(&fw, filename, &dev->pci->dev);
  if (ret != 0)
   pr_err("did not find the firmware file '%s'. You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware.",
          filename);
  else
   altera_init(&netup_config, fw);

  release_firmware(fw);
  break;
 }
 }
}
