
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct saa7146_pci_extension_data {struct budget_info* ext_priv; } ;
struct saa7146_dev {TYPE_2__* pci; int name; } ;
struct module {int dummy; } ;
struct budget_info {int type; int name; } ;
struct TYPE_11__ {int proposed_mac; } ;
struct TYPE_9__ {int name; } ;
struct budget {int buffer_width; int buffer_height; int buffer_size; int buffer_warning_threshold; TYPE_7__ dvb_adapter; TYPE_1__ i2c_adap; int pt; int * grabbing; int vpe_tasklet; struct budget_info* card; int debilock; int feedlock; int video_port; struct saa7146_dev* dev; int buffer_warning_time; scalar_t__ buffer_warnings; } ;
struct TYPE_10__ {int dev; } ;
 int BUDGET_VIDEO_PORTA ;
 int BUDGET_VIDEO_PORTB ;
 int DD1_INIT ;
 int DD1_STREAM_B ;
 int ENOMEM ;
 int GPIO_CTRL ;
 int MASK_09 ;
 int MASK_10 ;
 int MASK_25 ;
 int MASK_26 ;
 int MC2 ;
 int PCI_BT_V1 ;
 int SAA7146_GPIO_OUTHI ;
 int SAA7146_I2C_BUS_BIT_RATE_120 ;
 int TS_HEIGHT_MASK ;
 int TS_HEIGHT_MASK_ACTIVY ;
 int TS_HEIGHT_MASK_DVBC ;
 int TS_MAX_BUFSIZE_K ;
 int TS_MAX_BUFSIZE_K_ACTIVY ;
 int TS_MAX_BUFSIZE_K_DVBC ;
 int TS_MIN_BUFSIZE_K ;
 int TS_WIDTH ;
 int TS_WIDTH_ACTIVY ;
 int TS_WIDTH_DVBC ;
 int budget_register (struct budget*) ;
 int dma_buffer_size ;
 int dprintk (int,char*,struct saa7146_dev*,...) ;
 int dvb_register_adapter (TYPE_7__*,int ,struct module*,int *,short*) ;
 int dvb_unregister_adapter (TYPE_7__*) ;
 scalar_t__ i2c_add_adapter (TYPE_1__*) ;
 int i2c_del_adapter (TYPE_1__*) ;
 int jiffies ;
 int memset (struct budget*,int ,int) ;
 int printk (char*,int ,int) ;
 int saa7146_i2c_adapter_prepare (struct saa7146_dev*,TYPE_1__*,int ) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int saa7146_vfree_destroy_pgtable (TYPE_2__*,int *,int *) ;
 int * saa7146_vmalloc_build_pgtable (TYPE_2__*,int,int *) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,int ,int) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int ttpci_eeprom_parse_mac (TYPE_1__*,int ) ;
 int vpeirq ;

int ttpci_budget_init(struct budget *budget, struct saa7146_dev *dev,
        struct saa7146_pci_extension_data *info,
        struct module *owner, short *adapter_nums)
{
 int ret = 0;
 struct budget_info *bi = info->ext_priv;
 int max_bufsize;
 int height_mask;

 memset(budget, 0, sizeof(struct budget));

 dprintk(2, "dev: %p, budget: %p\n", dev, budget);

 budget->card = bi;
 budget->dev = (struct saa7146_dev *) dev;

 switch(budget->card->type) {
 case 133:
  budget->buffer_width = TS_WIDTH_ACTIVY;
  max_bufsize = TS_MAX_BUFSIZE_K_ACTIVY;
  height_mask = TS_HEIGHT_MASK_ACTIVY;
  break;

 case 132:
 case 131:
 case 135:
 case 129:
 case 128:
 case 130:
 case 134:
  budget->buffer_width = TS_WIDTH_DVBC;
  max_bufsize = TS_MAX_BUFSIZE_K_DVBC;
  height_mask = TS_HEIGHT_MASK_DVBC;
  break;

 default:
  budget->buffer_width = TS_WIDTH;
  max_bufsize = TS_MAX_BUFSIZE_K;
  height_mask = TS_HEIGHT_MASK;
 }

 if (dma_buffer_size < TS_MIN_BUFSIZE_K)
  dma_buffer_size = TS_MIN_BUFSIZE_K;
 else if (dma_buffer_size > max_bufsize)
  dma_buffer_size = max_bufsize;

 budget->buffer_height = dma_buffer_size * 1024 / budget->buffer_width;
 if (budget->buffer_height > 0xfff) {
  budget->buffer_height /= 2;
  budget->buffer_height &= height_mask;
  budget->buffer_size = 2 * budget->buffer_height * budget->buffer_width;
 } else {
  budget->buffer_height &= height_mask;
  budget->buffer_size = budget->buffer_height * budget->buffer_width;
 }
 budget->buffer_warning_threshold = budget->buffer_size * 80/100;
 budget->buffer_warnings = 0;
 budget->buffer_warning_time = jiffies;

 dprintk(2, "%s: buffer type = %s, width = %d, height = %d\n",
  budget->dev->name,
  budget->buffer_size > budget->buffer_width * budget->buffer_height ? "odd/even" : "single",
  budget->buffer_width, budget->buffer_height);
 printk("%s: dma buffer size %u\n", budget->dev->name, budget->buffer_size);

 ret = dvb_register_adapter(&budget->dvb_adapter, budget->card->name,
       owner, &budget->dev->pci->dev, adapter_nums);
 if (ret < 0)
  return ret;


 saa7146_write(dev, DD1_STREAM_B, 0x00000000);
 saa7146_write(dev, MC2, (MASK_09 | MASK_25));
 saa7146_write(dev, MC2, (MASK_10 | MASK_26));
 saa7146_write(dev, DD1_INIT, 0x02000000);
 saa7146_write(dev, MC2, (MASK_09 | MASK_25 | MASK_10 | MASK_26));

 if (bi->type != 133)
  budget->video_port = BUDGET_VIDEO_PORTB;
 else
  budget->video_port = BUDGET_VIDEO_PORTA;
 spin_lock_init(&budget->feedlock);
 spin_lock_init(&budget->debilock);



 if (bi->type != 133)
  saa7146_write(dev, GPIO_CTRL, 0x500000);

 strscpy(budget->i2c_adap.name, budget->card->name,
  sizeof(budget->i2c_adap.name));

 saa7146_i2c_adapter_prepare(dev, &budget->i2c_adap, SAA7146_I2C_BUS_BIT_RATE_120);
 strscpy(budget->i2c_adap.name, budget->card->name,
  sizeof(budget->i2c_adap.name));

 if (i2c_add_adapter(&budget->i2c_adap) < 0) {
  ret = -ENOMEM;
  goto err_dvb_unregister;
 }

 ttpci_eeprom_parse_mac(&budget->i2c_adap, budget->dvb_adapter.proposed_mac);

 budget->grabbing = saa7146_vmalloc_build_pgtable(dev->pci, budget->buffer_size, &budget->pt);
 if (((void*)0) == budget->grabbing) {
  ret = -ENOMEM;
  goto err_del_i2c;
 }

 saa7146_write(dev, PCI_BT_V1, 0x001c0000);

 saa7146_write(dev, GPIO_CTRL, 0x000000);

 tasklet_init(&budget->vpe_tasklet, vpeirq, (unsigned long) budget);


 if (bi->type != 133)
  saa7146_setgpio(dev, 2, SAA7146_GPIO_OUTHI);

 if ((ret = budget_register(budget)) == 0)
  return 0;


 saa7146_vfree_destroy_pgtable(dev->pci, budget->grabbing, &budget->pt);

err_del_i2c:
 i2c_del_adapter(&budget->i2c_adap);

err_dvb_unregister:
 dvb_unregister_adapter(&budget->dvb_adapter);

 return ret;
}
