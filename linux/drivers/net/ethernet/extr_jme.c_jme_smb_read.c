
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct jme_adapter {int dev; } ;


 int JME_SMBCSR ;
 int JME_SMBINTF ;
 int JME_SMB_BUSY_TIMEOUT ;
 unsigned int SMBCSR_BUSY ;
 unsigned int SMBINTF_HWADDR ;
 unsigned int SMBINTF_HWADDR_SHIFT ;
 unsigned int SMBINTF_HWCMD ;
 unsigned int SMBINTF_HWDATR ;
 unsigned int SMBINTF_HWDATR_SHIFT ;
 unsigned int SMBINTF_HWRWN_READ ;
 int hw ;
 unsigned int jread32 (struct jme_adapter*,int ) ;
 int jwrite32 (struct jme_adapter*,int ,unsigned int) ;
 int msleep (int) ;
 int netif_err (struct jme_adapter*,int ,int ,char*) ;

__attribute__((used)) static u8
jme_smb_read(struct jme_adapter *jme, unsigned int addr)
{
 u32 val;
 int to;

 val = jread32(jme, JME_SMBCSR);
 to = JME_SMB_BUSY_TIMEOUT;
 while ((val & SMBCSR_BUSY) && --to) {
  msleep(1);
  val = jread32(jme, JME_SMBCSR);
 }
 if (!to) {
  netif_err(jme, hw, jme->dev, "SMB Bus Busy\n");
  return 0xFF;
 }

 jwrite32(jme, JME_SMBINTF,
  ((addr << SMBINTF_HWADDR_SHIFT) & SMBINTF_HWADDR) |
  SMBINTF_HWRWN_READ |
  SMBINTF_HWCMD);

 val = jread32(jme, JME_SMBINTF);
 to = JME_SMB_BUSY_TIMEOUT;
 while ((val & SMBINTF_HWCMD) && --to) {
  msleep(1);
  val = jread32(jme, JME_SMBINTF);
 }
 if (!to) {
  netif_err(jme, hw, jme->dev, "SMB Bus Busy\n");
  return 0xFF;
 }

 return (val & SMBINTF_HWDATR) >> SMBINTF_HWDATR_SHIFT;
}
