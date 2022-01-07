
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sdhci_pci_chip {TYPE_1__* pdev; } ;
struct TYPE_5__ {int device; } ;


 int O2_SD_ADMA1 ;
 int O2_SD_ADMA2 ;
 int O2_SD_CAPS ;
 int O2_SD_CAP_REG2 ;
 int O2_SD_CLKREQ ;
 int O2_SD_CLK_SETTING ;
 int O2_SD_FREG4_ENABLE_CLK_SET ;
 int O2_SD_FUNC_REG0 ;
 int O2_SD_FUNC_REG4 ;
 int O2_SD_INF_MOD ;
 int O2_SD_LOCK_WP ;
 int O2_SD_MULTI_VCC3V ;
 int O2_SD_PLL_SETTING ;
 int O2_SD_TUNING_CTRL ;
 int o2_pci_led_enable (struct sdhci_pci_chip*) ;
 int o2_pci_set_baseclk (struct sdhci_pci_chip*,int) ;
 int pci_read_config_byte (TYPE_1__*,int ,int*) ;
 int pci_read_config_dword (TYPE_1__*,int ,int*) ;
 int pci_write_config_byte (TYPE_1__*,int ,int) ;
 int pci_write_config_dword (TYPE_1__*,int ,int) ;
 int sdhci_pci_o2_fujin2_pci_init (struct sdhci_pci_chip*) ;

int sdhci_pci_o2_probe(struct sdhci_pci_chip *chip)
{
 int ret;
 u8 scratch;
 u32 scratch_32;

 switch (chip->pdev->device) {
 case 136:
 case 135:
 case 134:
 case 133:

  ret = pci_read_config_byte(chip->pdev,
    O2_SD_LOCK_WP, &scratch);
  if (ret)
   return ret;
  scratch &= 0x7f;
  pci_write_config_byte(chip->pdev, O2_SD_LOCK_WP, scratch);


  pci_write_config_byte(chip->pdev, O2_SD_MULTI_VCC3V, 0x08);


  ret = pci_read_config_byte(chip->pdev,
    O2_SD_CLKREQ, &scratch);
  if (ret)
   return ret;
  scratch |= 0x20;
  pci_write_config_byte(chip->pdev, O2_SD_CLKREQ, scratch);




  ret = pci_read_config_byte(chip->pdev, O2_SD_CAPS, &scratch);
  if (ret)
   return ret;
  scratch |= 0x01;
  pci_write_config_byte(chip->pdev, O2_SD_CAPS, scratch);
  pci_write_config_byte(chip->pdev, O2_SD_CAPS, 0x73);


  pci_write_config_byte(chip->pdev, O2_SD_ADMA1, 0x39);
  pci_write_config_byte(chip->pdev, O2_SD_ADMA2, 0x08);


  ret = pci_read_config_byte(chip->pdev,
    O2_SD_INF_MOD, &scratch);
  if (ret)
   return ret;
  scratch |= 0x08;
  pci_write_config_byte(chip->pdev, O2_SD_INF_MOD, scratch);


  ret = pci_read_config_byte(chip->pdev,
    O2_SD_LOCK_WP, &scratch);
  if (ret)
   return ret;
  scratch |= 0x80;
  pci_write_config_byte(chip->pdev, O2_SD_LOCK_WP, scratch);
  break;
 case 131:
 case 130:
 case 132:

  ret = pci_read_config_byte(chip->pdev,
    O2_SD_LOCK_WP, &scratch);
  if (ret)
   return ret;

  scratch &= 0x7f;
  pci_write_config_byte(chip->pdev, O2_SD_LOCK_WP, scratch);


  if (chip->pdev->device == 132) {
   ret = pci_read_config_dword(chip->pdev,
          O2_SD_FUNC_REG0,
          &scratch_32);
   scratch_32 = ((scratch_32 & 0xFF000000) >> 24);


   if ((scratch_32 == 0x11) || (scratch_32 == 0x12)) {
    scratch_32 = 0x25100000;

    o2_pci_set_baseclk(chip, scratch_32);
    ret = pci_read_config_dword(chip->pdev,
           O2_SD_FUNC_REG4,
           &scratch_32);


    scratch_32 |= O2_SD_FREG4_ENABLE_CLK_SET;
    pci_write_config_dword(chip->pdev,
             O2_SD_FUNC_REG4,
             scratch_32);


    pci_write_config_byte(chip->pdev,
            O2_SD_TUNING_CTRL, 0x44);

    break;
   }
  }


  o2_pci_led_enable(chip);


  ret = pci_read_config_dword(chip->pdev,
         O2_SD_CLK_SETTING, &scratch_32);
  if (ret)
   return ret;

  scratch_32 &= ~(0xFF00);
  scratch_32 |= 0x07E0C800;
  pci_write_config_dword(chip->pdev,
           O2_SD_CLK_SETTING, scratch_32);

  ret = pci_read_config_dword(chip->pdev,
         O2_SD_CLKREQ, &scratch_32);
  if (ret)
   return ret;
  scratch_32 |= 0x3;
  pci_write_config_dword(chip->pdev, O2_SD_CLKREQ, scratch_32);

  ret = pci_read_config_dword(chip->pdev,
         O2_SD_PLL_SETTING, &scratch_32);
  if (ret)
   return ret;

  scratch_32 &= ~(0x1F3F070E);
  scratch_32 |= 0x18270106;
  pci_write_config_dword(chip->pdev,
           O2_SD_PLL_SETTING, scratch_32);


  ret = pci_read_config_dword(chip->pdev,
         O2_SD_CAP_REG2, &scratch_32);
  if (ret)
   return ret;
  scratch_32 &= ~(0xE0);
  pci_write_config_dword(chip->pdev,
           O2_SD_CAP_REG2, scratch_32);

  if (chip->pdev->device == 132)
   sdhci_pci_o2_fujin2_pci_init(chip);


  ret = pci_read_config_byte(chip->pdev,
        O2_SD_LOCK_WP, &scratch);
  if (ret)
   return ret;
  scratch |= 0x80;
  pci_write_config_byte(chip->pdev, O2_SD_LOCK_WP, scratch);
  break;
 case 129:
 case 128:

  ret = pci_read_config_byte(chip->pdev,
    O2_SD_LOCK_WP, &scratch);
  if (ret)
   return ret;

  scratch &= 0x7f;
  pci_write_config_byte(chip->pdev, O2_SD_LOCK_WP, scratch);

  ret = pci_read_config_dword(chip->pdev,
         O2_SD_PLL_SETTING, &scratch_32);

  if ((scratch_32 & 0xff000000) == 0x01000000) {
   scratch_32 &= 0x0000FFFF;
   scratch_32 |= 0x1F340000;

   pci_write_config_dword(chip->pdev,
            O2_SD_PLL_SETTING, scratch_32);
  } else {
   scratch_32 &= 0x0000FFFF;
   scratch_32 |= 0x25100000;

   pci_write_config_dword(chip->pdev,
            O2_SD_PLL_SETTING, scratch_32);

   ret = pci_read_config_dword(chip->pdev,
          O2_SD_FUNC_REG4,
          &scratch_32);
   scratch_32 |= (1 << 22);
   pci_write_config_dword(chip->pdev,
            O2_SD_FUNC_REG4, scratch_32);
  }


  pci_write_config_byte(chip->pdev,
    O2_SD_TUNING_CTRL, 0x55);

  ret = pci_read_config_byte(chip->pdev,
        O2_SD_LOCK_WP, &scratch);
  if (ret)
   return ret;
  scratch |= 0x80;
  pci_write_config_byte(chip->pdev, O2_SD_LOCK_WP, scratch);
  break;
 }

 return 0;
}
