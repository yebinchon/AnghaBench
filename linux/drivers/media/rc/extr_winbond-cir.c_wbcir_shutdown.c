
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wbcir_data {int irq; scalar_t__ wbase; struct rc_dev* dev; } ;
struct TYPE_2__ {int data; int mask; } ;
struct rc_dev {int wakeup_protocol; TYPE_1__ scancode_wakeup_filter; } ;
struct device {int dummy; } ;
struct pnp_dev {struct device dev; } ;
typedef int match ;
typedef int mask ;


 int IR_PROTOCOL_NEC ;
 int IR_PROTOCOL_RC5 ;
 int IR_PROTOCOL_RC6 ;





 int RC_PROTO_RC6_6A_20 ;



 int WBCIR_IRQ_NONE ;
 int WBCIR_REGSEL_COMPARE ;
 int WBCIR_REGSEL_MASK ;
 int WBCIR_REG_ADDR0 ;
 scalar_t__ WBCIR_REG_WCEIR_CSL ;
 scalar_t__ WBCIR_REG_WCEIR_CTL ;
 scalar_t__ WBCIR_REG_WCEIR_DATA ;
 scalar_t__ WBCIR_REG_WCEIR_EV_EN ;
 scalar_t__ WBCIR_REG_WCEIR_INDEX ;
 scalar_t__ WBCIR_REG_WCEIR_STS ;
 int bitrev8 (int) ;
 int device_may_wakeup (struct device*) ;
 int disable_irq (int ) ;
 int memset (int*,int ,int) ;
 int outb (int,scalar_t__) ;
 int outsb (scalar_t__,int*,int) ;
 struct wbcir_data* pnp_get_drvdata (struct pnp_dev*) ;
 int wbcir_set_bits (scalar_t__,int,int) ;
 int wbcir_set_irqmask (struct wbcir_data*,int ) ;
 int wbcir_to_rc6cells (int) ;

__attribute__((used)) static void
wbcir_shutdown(struct pnp_dev *device)
{
 struct device *dev = &device->dev;
 struct wbcir_data *data = pnp_get_drvdata(device);
 struct rc_dev *rc = data->dev;
 bool do_wake = 1;
 u8 match[11];
 u8 mask[11];
 u8 rc6_csl = 0;
 u8 proto;
 u32 wake_sc = rc->scancode_wakeup_filter.data;
 u32 mask_sc = rc->scancode_wakeup_filter.mask;
 int i;

 memset(match, 0, sizeof(match));
 memset(mask, 0, sizeof(mask));

 if (!mask_sc || !device_may_wakeup(dev)) {
  do_wake = 0;
  goto finish;
 }

 switch (rc->wakeup_protocol) {
 case 132:

  mask[0] = (mask_sc & 0x003f);
  mask[0] |= (mask_sc & 0x0300) >> 2;
  mask[1] = (mask_sc & 0x1c00) >> 10;
  if (mask_sc & 0x0040)
   match[1] |= 0x10;

  match[0] = (wake_sc & 0x003F);
  match[0] |= (wake_sc & 0x0300) >> 2;
  match[1] = (wake_sc & 0x1c00) >> 10;
  if (!(wake_sc & 0x0040))
   match[1] |= 0x10;

  proto = IR_PROTOCOL_RC5;
  break;

 case 135:
  mask[1] = bitrev8(mask_sc);
  mask[0] = mask[1];
  mask[3] = bitrev8(mask_sc >> 8);
  mask[2] = mask[3];

  match[1] = bitrev8(wake_sc);
  match[0] = ~match[1];
  match[3] = bitrev8(wake_sc >> 8);
  match[2] = ~match[3];

  proto = IR_PROTOCOL_NEC;
  break;

 case 133:
  mask[1] = bitrev8(mask_sc);
  mask[0] = mask[1];
  mask[2] = bitrev8(mask_sc >> 8);
  mask[3] = bitrev8(mask_sc >> 16);

  match[1] = bitrev8(wake_sc);
  match[0] = ~match[1];
  match[2] = bitrev8(wake_sc >> 8);
  match[3] = bitrev8(wake_sc >> 16);

  proto = IR_PROTOCOL_NEC;
  break;

 case 134:
  mask[0] = bitrev8(mask_sc);
  mask[1] = bitrev8(mask_sc >> 8);
  mask[2] = bitrev8(mask_sc >> 16);
  mask[3] = bitrev8(mask_sc >> 24);

  match[0] = bitrev8(wake_sc);
  match[1] = bitrev8(wake_sc >> 8);
  match[2] = bitrev8(wake_sc >> 16);
  match[3] = bitrev8(wake_sc >> 24);

  proto = IR_PROTOCOL_NEC;
  break;

 case 131:

  match[0] = wbcir_to_rc6cells(wake_sc >> 0);
  mask[0] = wbcir_to_rc6cells(mask_sc >> 0);
  match[1] = wbcir_to_rc6cells(wake_sc >> 4);
  mask[1] = wbcir_to_rc6cells(mask_sc >> 4);


  match[2] = wbcir_to_rc6cells(wake_sc >> 8);
  mask[2] = wbcir_to_rc6cells(mask_sc >> 8);
  match[3] = wbcir_to_rc6cells(wake_sc >> 12);
  mask[3] = wbcir_to_rc6cells(mask_sc >> 12);


  match[4] = 0x50;
  mask[4] = 0xF0;
  match[5] = 0x09;
  mask[5] = 0x0F;

  rc6_csl = 44;
  proto = IR_PROTOCOL_RC6;
  break;

 case 130:
 case 129:
 case 128:
  i = 0;


  match[i] = wbcir_to_rc6cells(wake_sc >> 0);
  mask[i++] = wbcir_to_rc6cells(mask_sc >> 0);
  match[i] = wbcir_to_rc6cells(wake_sc >> 4);
  mask[i++] = wbcir_to_rc6cells(mask_sc >> 4);


  match[i] = wbcir_to_rc6cells(wake_sc >> 8);
  mask[i++] = wbcir_to_rc6cells(mask_sc >> 8);
  match[i] = wbcir_to_rc6cells(wake_sc >> 12);
  mask[i++] = wbcir_to_rc6cells(mask_sc >> 12);


  match[i] = wbcir_to_rc6cells(wake_sc >> 16);
  mask[i++] = wbcir_to_rc6cells(mask_sc >> 16);

  if (rc->wakeup_protocol == RC_PROTO_RC6_6A_20) {
   rc6_csl = 52;
  } else {
   match[i] = wbcir_to_rc6cells(wake_sc >> 20);
   mask[i++] = wbcir_to_rc6cells(mask_sc >> 20);

   if (rc->wakeup_protocol == 130) {
    rc6_csl = 60;
   } else {

    match[i] = wbcir_to_rc6cells(wake_sc >> 24);
    mask[i++] = wbcir_to_rc6cells(mask_sc >> 24);
    match[i] = wbcir_to_rc6cells(wake_sc >> 28);
    mask[i++] = wbcir_to_rc6cells(mask_sc >> 28);
    rc6_csl = 76;
   }
  }


  match[i] = 0x93;
  mask[i++] = 0xFF;
  match[i] = 0x0A;
  mask[i++] = 0x0F;
  proto = IR_PROTOCOL_RC6;
  break;
 default:
  do_wake = 0;
  break;
 }

finish:
 if (do_wake) {

  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_INDEX,
          WBCIR_REGSEL_COMPARE | WBCIR_REG_ADDR0,
          0x3F);
  outsb(data->wbase + WBCIR_REG_WCEIR_DATA, match, 11);
  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_INDEX,
          WBCIR_REGSEL_MASK | WBCIR_REG_ADDR0,
          0x3F);
  outsb(data->wbase + WBCIR_REG_WCEIR_DATA, mask, 11);


  outb(rc6_csl, data->wbase + WBCIR_REG_WCEIR_CSL);


  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_STS, 0x17, 0x17);


  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x01, 0x07);


  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_CTL,
          (proto << 4) | 0x01, 0x31);

 } else {

  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x00, 0x07);


  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_CTL, 0x00, 0x01);
 }







 wbcir_set_irqmask(data, WBCIR_IRQ_NONE);
 disable_irq(data->irq);
}
