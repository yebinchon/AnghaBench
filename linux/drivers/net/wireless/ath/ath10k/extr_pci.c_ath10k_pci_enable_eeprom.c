
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int CLOCK_CONTROL_OFFSET ;
 scalar_t__ GPIO_BASE_ADDRESS ;
 int GPIO_PIN0_CONFIG ;
 scalar_t__ GPIO_PIN0_OFFSET ;
 int GPIO_PIN0_PAD_PULL ;
 scalar_t__ QCA9887_1_0_GPIO_ENABLE_W1TS_LOW_ADDRESS ;
 int QCA9887_1_0_I2C_SDA_GPIO_PIN ;
 int QCA9887_1_0_I2C_SDA_PIN_CONFIG ;
 int QCA9887_1_0_SI_CLK_GPIO_PIN ;
 int QCA9887_1_0_SI_CLK_PIN_CONFIG ;
 scalar_t__ SI_BASE_ADDRESS ;
 int SI_CONFIG_BIDIR_OD_DATA ;
 int SI_CONFIG_DIVIDER ;
 int SI_CONFIG_ERR_INT ;
 int SI_CONFIG_I2C ;
 int SI_CONFIG_INACTIVE_CLK ;
 int SI_CONFIG_INACTIVE_DATA ;
 scalar_t__ SI_CONFIG_OFFSET ;
 int SI_CONFIG_POS_SAMPLE ;
 unsigned int SM (int,int ) ;
 int ath10k_pci_soc_write32 (struct ath10k*,int ,int) ;
 int ath10k_pci_write32 (struct ath10k*,scalar_t__,unsigned int) ;

__attribute__((used)) static void ath10k_pci_enable_eeprom(struct ath10k *ar)
{

 ath10k_pci_soc_write32(ar, CLOCK_CONTROL_OFFSET, 0x0);


 ath10k_pci_write32(ar,
      GPIO_BASE_ADDRESS + GPIO_PIN0_OFFSET +
      4 * QCA9887_1_0_I2C_SDA_GPIO_PIN,
      SM(QCA9887_1_0_I2C_SDA_PIN_CONFIG,
         GPIO_PIN0_CONFIG) |
      SM(1, GPIO_PIN0_PAD_PULL));

 ath10k_pci_write32(ar,
      GPIO_BASE_ADDRESS + GPIO_PIN0_OFFSET +
      4 * QCA9887_1_0_SI_CLK_GPIO_PIN,
      SM(QCA9887_1_0_SI_CLK_PIN_CONFIG, GPIO_PIN0_CONFIG) |
      SM(1, GPIO_PIN0_PAD_PULL));

 ath10k_pci_write32(ar,
      GPIO_BASE_ADDRESS +
      QCA9887_1_0_GPIO_ENABLE_W1TS_LOW_ADDRESS,
      1u << QCA9887_1_0_SI_CLK_GPIO_PIN);


 ath10k_pci_write32(ar,
      SI_BASE_ADDRESS + SI_CONFIG_OFFSET,
      SM(1, SI_CONFIG_ERR_INT) |
      SM(1, SI_CONFIG_BIDIR_OD_DATA) |
      SM(1, SI_CONFIG_I2C) |
      SM(1, SI_CONFIG_POS_SAMPLE) |
      SM(1, SI_CONFIG_INACTIVE_DATA) |
      SM(1, SI_CONFIG_INACTIVE_CLK) |
      SM(8, SI_CONFIG_DIVIDER));
}
