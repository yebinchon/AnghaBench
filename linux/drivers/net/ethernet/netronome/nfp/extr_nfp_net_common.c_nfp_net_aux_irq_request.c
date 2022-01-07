
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_net {struct msix_entry* irq_entries; } ;
struct msix_entry {int entry; int vector; } ;
typedef int irq_handler_t ;


 int nfp_net_irq_unmask (struct nfp_net*,int ) ;
 int nfp_net_name (struct nfp_net*) ;
 int nn_err (struct nfp_net*,char*,int ,int) ;
 int nn_writeb (struct nfp_net*,int ,int ) ;
 int request_irq (int ,int ,int ,char*,struct nfp_net*) ;
 int snprintf (char*,size_t,char const*,int ) ;

__attribute__((used)) static int
nfp_net_aux_irq_request(struct nfp_net *nn, u32 ctrl_offset,
   const char *format, char *name, size_t name_sz,
   unsigned int vector_idx, irq_handler_t handler)
{
 struct msix_entry *entry;
 int err;

 entry = &nn->irq_entries[vector_idx];

 snprintf(name, name_sz, format, nfp_net_name(nn));
 err = request_irq(entry->vector, handler, 0, name, nn);
 if (err) {
  nn_err(nn, "Failed to request IRQ %d (err=%d).\n",
         entry->vector, err);
  return err;
 }
 nn_writeb(nn, ctrl_offset, entry->entry);
 nfp_net_irq_unmask(nn, entry->entry);

 return 0;
}
