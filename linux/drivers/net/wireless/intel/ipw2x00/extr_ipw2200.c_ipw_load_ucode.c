
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int alive_command; int ucode_valid; int * time_stamp; int device_identifier; int software_revision; } ;
struct ipw_priv {TYPE_1__ dino_alive; } ;
typedef int __le32 ;
typedef int __le16 ;


 int ARRAY_SIZE (int *) ;
 int DINO_ENABLE_CS ;
 int DINO_ENABLE_SYSTEM ;
 int DINO_RXFIFO_DATA ;
 int EINVAL ;
 int ETIME ;
 int IPW_BASEBAND_CONTROL_STATUS ;
 int IPW_BASEBAND_CONTROL_STORE ;
 int IPW_BASEBAND_POWER_DOWN ;
 int IPW_BASEBAND_RX_FIFO_READ ;
 int IPW_BIT_HALT_RESET_OFF ;
 int IPW_BIT_HALT_RESET_ON ;
 int IPW_DEBUG_INFO (char*,...) ;
 int IPW_DEBUG_TRACE (char*) ;
 int IPW_INTERNAL_CMD_EVENT ;
 int IPW_MEM_HALT_AND_RESET ;
 int IPW_REGISTER_DOMAIN1_END ;
 int IPW_SHARED_LOWER_BOUND ;
 int cpu_to_le32 (int ) ;
 int ipw_arc_release (struct ipw_priv*) ;
 int ipw_read_reg32 (struct ipw_priv*,int ) ;
 int ipw_read_reg8 (struct ipw_priv*,int ) ;
 int ipw_stop_master (struct ipw_priv*) ;
 int ipw_write32 (struct ipw_priv*,int,int ) ;
 int ipw_write_reg16 (struct ipw_priv*,int ,int ) ;
 int ipw_write_reg32 (struct ipw_priv*,int ,int ) ;
 int ipw_write_reg8 (struct ipw_priv*,int ,int) ;
 int le16_to_cpu (int ) ;
 int mdelay (int) ;
 int memcpy (TYPE_1__*,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int ipw_load_ucode(struct ipw_priv *priv, u8 * data, size_t len)
{
 int rc = 0, i, addr;
 u8 cr = 0;
 __le16 *image;

 image = (__le16 *) data;

 IPW_DEBUG_TRACE(">>\n");

 rc = ipw_stop_master(priv);

 if (rc < 0)
  return rc;

 for (addr = IPW_SHARED_LOWER_BOUND;
      addr < IPW_REGISTER_DOMAIN1_END; addr += 4) {
  ipw_write32(priv, addr, 0);
 }


 memset(&priv->dino_alive, 0, sizeof(priv->dino_alive));



 ipw_write_reg32(priv, IPW_MEM_HALT_AND_RESET, IPW_BIT_HALT_RESET_ON);
 ipw_arc_release(priv);
 ipw_write_reg32(priv, IPW_MEM_HALT_AND_RESET, IPW_BIT_HALT_RESET_OFF);
 mdelay(1);


 ipw_write_reg32(priv, IPW_INTERNAL_CMD_EVENT, IPW_BASEBAND_POWER_DOWN);
 mdelay(1);

 ipw_write_reg32(priv, IPW_INTERNAL_CMD_EVENT, 0);
 mdelay(1);


 ipw_write_reg8(priv, IPW_BASEBAND_CONTROL_STATUS, 0x0);
 ipw_write_reg8(priv, IPW_BASEBAND_CONTROL_STATUS, DINO_ENABLE_CS);
 mdelay(1);
 for (i = 0; i < len / 2; i++)
  ipw_write_reg16(priv, IPW_BASEBAND_CONTROL_STORE,
    le16_to_cpu(image[i]));


 ipw_write_reg8(priv, IPW_BASEBAND_CONTROL_STATUS, 0);
 ipw_write_reg8(priv, IPW_BASEBAND_CONTROL_STATUS, DINO_ENABLE_SYSTEM);




 for (i = 0; i < 100; i++) {

  cr = ipw_read_reg8(priv, IPW_BASEBAND_CONTROL_STATUS);
  if (cr & DINO_RXFIFO_DATA)
   break;
  mdelay(1);
 }

 if (cr & DINO_RXFIFO_DATA) {

  __le32 response_buffer[(sizeof(priv->dino_alive) + 3) / 4];

  for (i = 0; i < ARRAY_SIZE(response_buffer); i++)
   response_buffer[i] =
       cpu_to_le32(ipw_read_reg32(priv,
             IPW_BASEBAND_RX_FIFO_READ));
  memcpy(&priv->dino_alive, response_buffer,
         sizeof(priv->dino_alive));
  if (priv->dino_alive.alive_command == 1
      && priv->dino_alive.ucode_valid == 1) {
   rc = 0;
   IPW_DEBUG_INFO
       ("Microcode OK, rev. %d (0x%x) dev. %d (0x%x) "
        "of %02d/%02d/%02d %02d:%02d\n",
        priv->dino_alive.software_revision,
        priv->dino_alive.software_revision,
        priv->dino_alive.device_identifier,
        priv->dino_alive.device_identifier,
        priv->dino_alive.time_stamp[0],
        priv->dino_alive.time_stamp[1],
        priv->dino_alive.time_stamp[2],
        priv->dino_alive.time_stamp[3],
        priv->dino_alive.time_stamp[4]);
  } else {
   IPW_DEBUG_INFO("Microcode is not alive\n");
   rc = -EINVAL;
  }
 } else {
  IPW_DEBUG_INFO("No alive response from DINO\n");
  rc = -ETIME;
 }



 ipw_write_reg8(priv, IPW_BASEBAND_CONTROL_STATUS, 0);

 return rc;
}
