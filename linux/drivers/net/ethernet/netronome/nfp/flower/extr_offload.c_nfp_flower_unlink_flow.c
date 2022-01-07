
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int list; } ;
struct TYPE_3__ {int list; } ;
struct nfp_fl_payload_link {TYPE_2__ sub_flow; TYPE_1__ merge_flow; } ;


 int kfree (struct nfp_fl_payload_link*) ;
 int list_del (int *) ;

__attribute__((used)) static void nfp_flower_unlink_flow(struct nfp_fl_payload_link *link)
{
 list_del(&link->merge_flow.list);
 list_del(&link->sub_flow.list);
 kfree(link);
}
