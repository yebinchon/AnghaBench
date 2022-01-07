
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
struct usbnet {int net; } ;
struct ndis_config_param {void* value_length; void* value_offs; void* type; void* name_length; void* name_offs; } ;
typedef void* __le32 ;
typedef int __le16 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RNDIS_OID_GEN_RNDIS_CONFIG_PARAMETER ;
 int cpu_to_be32 (int) ;
 int cpu_to_le16 (char) ;
 void* cpu_to_le32 (int) ;
 int kfree (struct ndis_config_param*) ;
 struct ndis_config_param* kmalloc (int,int ) ;
 int memset (struct ndis_config_param*,int,int) ;
 int netdev_dbg (int ,char*,...) ;
 int rndis_set_oid (struct usbnet*,int ,struct ndis_config_param*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int rndis_set_config_parameter(struct usbnet *dev, char *param,
      int value_type, void *value)
{
 struct ndis_config_param *infobuf;
 int value_len, info_len, param_len, ret, i;
 __le16 *unibuf;
 __le32 *dst_value;

 if (value_type == 0)
  value_len = sizeof(__le32);
 else if (value_type == 2)
  value_len = strlen(value) * sizeof(__le16);
 else
  return -EINVAL;

 param_len = strlen(param) * sizeof(__le16);
 info_len = sizeof(*infobuf) + param_len + value_len;




 infobuf = kmalloc(info_len, GFP_KERNEL);
 if (!infobuf)
  return -ENOMEM;







 if (value_type == 2)
  netdev_dbg(dev->net, "setting config parameter: %s, value: %s\n",
      param, (u8 *)value);
 else
  netdev_dbg(dev->net, "setting config parameter: %s, value: %d\n",
      param, *(u32 *)value);

 infobuf->name_offs = cpu_to_le32(sizeof(*infobuf));
 infobuf->name_length = cpu_to_le32(param_len);
 infobuf->type = cpu_to_le32(value_type);
 infobuf->value_offs = cpu_to_le32(sizeof(*infobuf) + param_len);
 infobuf->value_length = cpu_to_le32(value_len);


 unibuf = (void *)infobuf + sizeof(*infobuf);
 for (i = 0; i < param_len / sizeof(__le16); i++)
  unibuf[i] = cpu_to_le16(param[i]);

 if (value_type == 2) {
  unibuf = (void *)infobuf + sizeof(*infobuf) + param_len;
  for (i = 0; i < value_len / sizeof(__le16); i++)
   unibuf[i] = cpu_to_le16(((u8 *)value)[i]);
 } else {
  dst_value = (void *)infobuf + sizeof(*infobuf) + param_len;
  *dst_value = cpu_to_le32(*(u32 *)value);
 }
 ret = rndis_set_oid(dev, RNDIS_OID_GEN_RNDIS_CONFIG_PARAMETER,
       infobuf, info_len);
 if (ret != 0)
  netdev_dbg(dev->net, "setting rndis config parameter failed, %d\n",
      ret);

 kfree(infobuf);
 return ret;
}
