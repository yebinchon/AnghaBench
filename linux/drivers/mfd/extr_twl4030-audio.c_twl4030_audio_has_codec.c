
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_audio_data {scalar_t__ codec; } ;
struct device_node {int dummy; } ;


 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static bool twl4030_audio_has_codec(struct twl4030_audio_data *pdata,
         struct device_node *parent)
{
 struct device_node *node;

 if (pdata && pdata->codec)
  return 1;

 node = of_get_child_by_name(parent, "codec");
 if (node) {
  of_node_put(node);
  return 1;
 }

 return 0;
}
