
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sja1105_table_header {int crc; } ;
struct sja1105_static_config {int dummy; } ;
struct sja1105_private {TYPE_1__* spidev; struct sja1105_static_config static_config; } ;
typedef size_t sja1105_config_valid_t ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int PACK ;
 size_t SJA1105_CONFIG_OK ;
 void* SJA1105_SIZE_TABLE_HEADER ;
 int UNPACK ;
 int dev_err (int *,int ) ;
 int sja1105_crc32 (void*,int) ;
 size_t sja1105_static_config_check_valid (struct sja1105_static_config*) ;
 int * sja1105_static_config_error_msg ;
 int sja1105_static_config_pack (void*,struct sja1105_static_config*) ;
 int sja1105_table_header_packing (char*,struct sja1105_table_header*,int ) ;

__attribute__((used)) static int
static_config_buf_prepare_for_upload(struct sja1105_private *priv,
         void *config_buf, int buf_len)
{
 struct sja1105_static_config *config = &priv->static_config;
 struct sja1105_table_header final_header;
 sja1105_config_valid_t valid;
 char *final_header_ptr;
 int crc_len;

 valid = sja1105_static_config_check_valid(config);
 if (valid != SJA1105_CONFIG_OK) {
  dev_err(&priv->spidev->dev,
   sja1105_static_config_error_msg[valid]);
  return -EINVAL;
 }


 sja1105_static_config_pack(config_buf, config);



 crc_len = buf_len - 4;

 final_header_ptr = config_buf + buf_len - SJA1105_SIZE_TABLE_HEADER;
 sja1105_table_header_packing(final_header_ptr, &final_header, UNPACK);

 final_header.crc = sja1105_crc32(config_buf, crc_len);

 sja1105_table_header_packing(final_header_ptr, &final_header, PACK);

 return 0;
}
