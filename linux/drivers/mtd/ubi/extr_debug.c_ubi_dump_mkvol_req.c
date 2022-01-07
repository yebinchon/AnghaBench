
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_mkvol_req {char* vol_id; char* alignment; char* vol_type; char* name_len; int name; scalar_t__ bytes; } ;


 int memcpy (char*,int ,int) ;
 int pr_err (char*,...) ;

void ubi_dump_mkvol_req(const struct ubi_mkvol_req *req)
{
 char nm[17];

 pr_err("Volume creation request dump:\n");
 pr_err("\tvol_id    %d\n", req->vol_id);
 pr_err("\talignment %d\n", req->alignment);
 pr_err("\tbytes     %lld\n", (long long)req->bytes);
 pr_err("\tvol_type  %d\n", req->vol_type);
 pr_err("\tname_len  %d\n", req->name_len);

 memcpy(nm, req->name, 16);
 nm[16] = 0;
 pr_err("\t1st 16 characters of name: %s\n", nm);
}
