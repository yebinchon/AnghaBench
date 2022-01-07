
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vid_hdr {int hdr_crc; int sqnum; int data_pad; int used_ebs; int data_size; int lnum; int vol_id; scalar_t__ compat; scalar_t__ copy_flag; scalar_t__ vol_type; scalar_t__ version; int magic; } ;


 int DUMP_PREFIX_OFFSET ;
 int KERN_DEBUG ;
 int UBI_VID_HDR_SIZE ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int pr_err (char*,...) ;
 int print_hex_dump (int ,char*,int ,int,int,struct ubi_vid_hdr const*,int ,int) ;

void ubi_dump_vid_hdr(const struct ubi_vid_hdr *vid_hdr)
{
 pr_err("Volume identifier header dump:\n");
 pr_err("\tmagic     %08x\n", be32_to_cpu(vid_hdr->magic));
 pr_err("\tversion   %d\n", (int)vid_hdr->version);
 pr_err("\tvol_type  %d\n", (int)vid_hdr->vol_type);
 pr_err("\tcopy_flag %d\n", (int)vid_hdr->copy_flag);
 pr_err("\tcompat    %d\n", (int)vid_hdr->compat);
 pr_err("\tvol_id    %d\n", be32_to_cpu(vid_hdr->vol_id));
 pr_err("\tlnum      %d\n", be32_to_cpu(vid_hdr->lnum));
 pr_err("\tdata_size %d\n", be32_to_cpu(vid_hdr->data_size));
 pr_err("\tused_ebs  %d\n", be32_to_cpu(vid_hdr->used_ebs));
 pr_err("\tdata_pad  %d\n", be32_to_cpu(vid_hdr->data_pad));
 pr_err("\tsqnum     %llu\n",
  (unsigned long long)be64_to_cpu(vid_hdr->sqnum));
 pr_err("\thdr_crc   %08x\n", be32_to_cpu(vid_hdr->hdr_crc));
 pr_err("Volume identifier header hexdump:\n");
 print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
         vid_hdr, UBI_VID_HDR_SIZE, 1);
}
