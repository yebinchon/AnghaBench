
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_ec_hdr {int hdr_crc; int image_seq; int data_offset; int vid_hdr_offset; int ec; scalar_t__ version; int magic; } ;


 int DUMP_PREFIX_OFFSET ;
 int KERN_DEBUG ;
 int UBI_EC_HDR_SIZE ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int pr_err (char*,...) ;
 int print_hex_dump (int ,char*,int ,int,int,struct ubi_ec_hdr const*,int ,int) ;

void ubi_dump_ec_hdr(const struct ubi_ec_hdr *ec_hdr)
{
 pr_err("Erase counter header dump:\n");
 pr_err("\tmagic          %#08x\n", be32_to_cpu(ec_hdr->magic));
 pr_err("\tversion        %d\n", (int)ec_hdr->version);
 pr_err("\tec             %llu\n", (long long)be64_to_cpu(ec_hdr->ec));
 pr_err("\tvid_hdr_offset %d\n", be32_to_cpu(ec_hdr->vid_hdr_offset));
 pr_err("\tdata_offset    %d\n", be32_to_cpu(ec_hdr->data_offset));
 pr_err("\timage_seq      %d\n", be32_to_cpu(ec_hdr->image_seq));
 pr_err("\thdr_crc        %#08x\n", be32_to_cpu(ec_hdr->hdr_crc));
 pr_err("erase counter header hexdump:\n");
 print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
         ec_hdr, UBI_EC_HDR_SIZE, 1);
}
