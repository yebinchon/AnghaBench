
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfp_net {int app; } ;


 scalar_t__ NFP_META_PORT_ID_CTRL ;
 scalar_t__ NFP_NET_META_PORTID ;
 scalar_t__ get_unaligned_be32 (void*) ;
 int nfp_app_ctrl_has_meta (int ) ;

__attribute__((used)) static bool
nfp_ctrl_meta_ok(struct nfp_net *nn, void *data, unsigned int meta_len)
{
 u32 meta_type, meta_tag;

 if (!nfp_app_ctrl_has_meta(nn->app))
  return !meta_len;

 if (meta_len != 8)
  return 0;

 meta_type = get_unaligned_be32(data);
 meta_tag = get_unaligned_be32(data + 4);

 return (meta_type == NFP_NET_META_PORTID &&
  meta_tag == NFP_META_PORT_ID_CTRL);
}
