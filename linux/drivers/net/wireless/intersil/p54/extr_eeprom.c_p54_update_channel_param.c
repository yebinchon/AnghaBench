
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct p54_channel_list {int entries; int max_entries; struct p54_channel_entry* channels; int * band_channel_num; } ;
struct p54_channel_entry {scalar_t__ freq; int band; scalar_t__ data; scalar_t__ max_power; int index; } ;


 int ieee80211_frequency_to_channel (scalar_t__) ;
 int p54_get_band_from_freq (scalar_t__) ;

__attribute__((used)) static struct p54_channel_entry *p54_update_channel_param(struct p54_channel_list *list,
         u16 freq, u16 data)
{
 int i;
 struct p54_channel_entry *entry = ((void*)0);






 for (i = list->entries; i >= 0; i--) {
  if (freq == list->channels[i].freq) {
   entry = &list->channels[i];
   break;
  }
 }

 if ((i < 0) && (list->entries < list->max_entries)) {

  int band = p54_get_band_from_freq(freq);





  if (band >= 0) {
   i = list->entries++;
   list->band_channel_num[band]++;

   entry = &list->channels[i];
   entry->freq = freq;
   entry->band = band;
   entry->index = ieee80211_frequency_to_channel(freq);
   entry->max_power = 0;
   entry->data = 0;
  }
 }

 if (entry)
  entry->data |= data;

 return entry;
}
