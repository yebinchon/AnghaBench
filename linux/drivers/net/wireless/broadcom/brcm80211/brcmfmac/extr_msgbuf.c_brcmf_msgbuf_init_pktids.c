
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_msgbuf_pktids {int array_size; struct brcmf_msgbuf_pktid* array; } ;
struct brcmf_msgbuf_pktid {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int GFP_KERNEL ;
 struct brcmf_msgbuf_pktid* kcalloc (int ,int,int ) ;
 int kfree (struct brcmf_msgbuf_pktid*) ;
 struct brcmf_msgbuf_pktids* kzalloc (int,int ) ;

__attribute__((used)) static struct brcmf_msgbuf_pktids *
brcmf_msgbuf_init_pktids(u32 nr_array_entries,
    enum dma_data_direction direction)
{
 struct brcmf_msgbuf_pktid *array;
 struct brcmf_msgbuf_pktids *pktids;

 array = kcalloc(nr_array_entries, sizeof(*array), GFP_KERNEL);
 if (!array)
  return ((void*)0);

 pktids = kzalloc(sizeof(*pktids), GFP_KERNEL);
 if (!pktids) {
  kfree(array);
  return ((void*)0);
 }
 pktids->array = array;
 pktids->array_size = nr_array_entries;

 return pktids;
}
