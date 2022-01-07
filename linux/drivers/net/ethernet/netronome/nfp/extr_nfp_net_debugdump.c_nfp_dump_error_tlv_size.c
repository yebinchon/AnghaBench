
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_dump_tl {int length; } ;
struct nfp_dump_error {int dummy; } ;


 int ALIGN8 (scalar_t__) ;
 scalar_t__ be32_to_cpu (int ) ;

__attribute__((used)) static int nfp_dump_error_tlv_size(struct nfp_dump_tl *spec)
{
 return ALIGN8(sizeof(struct nfp_dump_error) + sizeof(*spec) +
        be32_to_cpu(spec->length));
}
