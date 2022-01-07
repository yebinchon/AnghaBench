
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct nfp_app_bpf {int dummy; } ;
struct cmsg_reply_map_simple {int rc; } ;


 size_t ARRAY_SIZE (int const*) ;
 size_t be32_to_cpu (int ) ;
 int cmsg_warn (struct nfp_app_bpf*,char*,size_t) ;

__attribute__((used)) static int
nfp_bpf_ctrl_rc_to_errno(struct nfp_app_bpf *bpf,
    struct cmsg_reply_map_simple *reply)
{
 static const int res_table[] = {
  [135] = 0,
  [139] = -133,
  [138] = -129,
  [141] = -131,
  [136] = -130,
  [140] = -132,
  [137] = -128,
  [142] = -134,
 };
 u32 rc;

 rc = be32_to_cpu(reply->rc);
 if (rc >= ARRAY_SIZE(res_table)) {
  cmsg_warn(bpf, "FW responded with invalid status: %u\n", rc);
  return -130;
 }

 return res_table[rc];
}
