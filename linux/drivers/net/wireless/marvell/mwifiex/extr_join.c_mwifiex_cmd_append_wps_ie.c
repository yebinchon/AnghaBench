
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_private {int wps_ie_len; struct mwifiex_ie_types_header* wps_ie; int adapter; } ;
struct mwifiex_ie_types_header {void* len; void* type; } ;
typedef int ie_header ;


 int CMD ;
 int TLV_TYPE_PASSTHROUGH ;
 void* cpu_to_le16 (int) ;
 int kfree (struct mwifiex_ie_types_header*) ;
 int memcpy (int *,struct mwifiex_ie_types_header*,int) ;
 int mwifiex_dbg (int ,int ,char*,int,int *) ;

__attribute__((used)) static int
mwifiex_cmd_append_wps_ie(struct mwifiex_private *priv, u8 **buffer)
{
 int retLen = 0;
 struct mwifiex_ie_types_header ie_header;

 if (!buffer || !*buffer)
  return 0;





 if (priv->wps_ie_len) {
  mwifiex_dbg(priv->adapter, CMD,
       "cmd: append wps ie %d to %p\n",
       priv->wps_ie_len, *buffer);


  ie_header.type = cpu_to_le16(TLV_TYPE_PASSTHROUGH);
  ie_header.len = cpu_to_le16(priv->wps_ie_len);
  memcpy(*buffer, &ie_header, sizeof(ie_header));
  *buffer += sizeof(ie_header);
  retLen += sizeof(ie_header);

  memcpy(*buffer, priv->wps_ie, priv->wps_ie_len);
  *buffer += priv->wps_ie_len;
  retLen += priv->wps_ie_len;

 }

 kfree(priv->wps_ie);
 priv->wps_ie_len = 0;
 return retLen;
}
