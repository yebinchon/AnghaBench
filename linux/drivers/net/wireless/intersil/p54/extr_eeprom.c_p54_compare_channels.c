
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_channel_entry {int freq; } ;



__attribute__((used)) static int p54_compare_channels(const void *_a,
    const void *_b)
{
 const struct p54_channel_entry *a = _a;
 const struct p54_channel_entry *b = _b;

 return a->freq - b->freq;
}
