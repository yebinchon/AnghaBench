
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct obj_mlmeex {int id; int state; int code; int size; } ;
struct obj_mlme {int id; int state; int code; } ;
struct obj_frequencies {int nr; int* mhz; } ;
struct obj_buffer {int size; int addr; } ;
struct obj_bsslist {int nr; int * bsslist; } ;
struct obj_bss {int age; int channel; int capinfo; int rates; int basic_rates; } ;
struct obj_attachment {int id; int size; } ;


 int BUG () ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;

__attribute__((used)) static void
mgt_cpu_to_le(int type, void *data)
{
 switch (type) {
 case 128:
  *(u32 *) data = cpu_to_le32(*(u32 *) data);
  break;
 case 135:{
   struct obj_buffer *buff = data;
   buff->size = cpu_to_le32(buff->size);
   buff->addr = cpu_to_le32(buff->addr);
   break;
  }
 case 137:{
   struct obj_bss *bss = data;
   bss->age = cpu_to_le16(bss->age);
   bss->channel = cpu_to_le16(bss->channel);
   bss->capinfo = cpu_to_le16(bss->capinfo);
   bss->rates = cpu_to_le16(bss->rates);
   bss->basic_rates = cpu_to_le16(bss->basic_rates);
   break;
  }
 case 136:{
   struct obj_bsslist *list = data;
   int i;
   list->nr = cpu_to_le32(list->nr);
   for (i = 0; i < list->nr; i++)
    mgt_cpu_to_le(137, &list->bsslist[i]);
   break;
  }
 case 134:{
   struct obj_frequencies *freq = data;
   int i;
   freq->nr = cpu_to_le16(freq->nr);
   for (i = 0; i < freq->nr; i++)
    freq->mhz[i] = cpu_to_le16(freq->mhz[i]);
   break;
  }
 case 132:{
   struct obj_mlme *mlme = data;
   mlme->id = cpu_to_le16(mlme->id);
   mlme->state = cpu_to_le16(mlme->state);
   mlme->code = cpu_to_le16(mlme->code);
   break;
  }
 case 131:{
   struct obj_mlmeex *mlme = data;
   mlme->id = cpu_to_le16(mlme->id);
   mlme->state = cpu_to_le16(mlme->state);
   mlme->code = cpu_to_le16(mlme->code);
   mlme->size = cpu_to_le16(mlme->size);
   break;
  }
 case 138:{
   struct obj_attachment *attach = data;
   attach->id = cpu_to_le16(attach->id);
   attach->size = cpu_to_le16(attach->size);
   break;
 }
 case 129:
 case 133:
 case 139:
 case 130:
  break;
 default:
  BUG();
 }
}
