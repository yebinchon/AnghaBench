
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sierra_net_data {int tx_hdr_template; } ;


 int memcpy (int *,int ,int) ;
 int put_unaligned_be16 (int const,int *) ;

__attribute__((used)) static void build_hip(u8 *buf, const u16 payloadlen,
  struct sierra_net_data *priv)
{



 put_unaligned_be16(payloadlen, buf);
 memcpy(buf+2, priv->tx_hdr_template, sizeof(priv->tx_hdr_template));
}
