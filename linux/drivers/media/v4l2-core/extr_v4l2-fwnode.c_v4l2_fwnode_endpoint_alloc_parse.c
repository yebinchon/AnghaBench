
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fwnode_endpoint {int nr_of_link_frequencies; int * link_frequencies; } ;
struct fwnode_handle {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __v4l2_fwnode_endpoint_parse (struct fwnode_handle*,struct v4l2_fwnode_endpoint*) ;
 int fwnode_property_count_u64 (struct fwnode_handle*,char*) ;
 int fwnode_property_read_u64_array (struct fwnode_handle*,char*,int *,int) ;
 int * kmalloc_array (int,int,int ) ;
 int pr_debug (char*) ;
 int pr_info (char*,unsigned int,int ) ;
 int v4l2_fwnode_endpoint_free (struct v4l2_fwnode_endpoint*) ;

int v4l2_fwnode_endpoint_alloc_parse(struct fwnode_handle *fwnode,
         struct v4l2_fwnode_endpoint *vep)
{
 int rval;

 rval = __v4l2_fwnode_endpoint_parse(fwnode, vep);
 if (rval < 0)
  return rval;

 rval = fwnode_property_count_u64(fwnode, "link-frequencies");
 if (rval > 0) {
  unsigned int i;

  vep->link_frequencies =
   kmalloc_array(rval, sizeof(*vep->link_frequencies),
          GFP_KERNEL);
  if (!vep->link_frequencies)
   return -ENOMEM;

  vep->nr_of_link_frequencies = rval;

  rval = fwnode_property_read_u64_array(fwnode,
            "link-frequencies",
            vep->link_frequencies,
            vep->nr_of_link_frequencies);
  if (rval < 0) {
   v4l2_fwnode_endpoint_free(vep);
   return rval;
  }

  for (i = 0; i < vep->nr_of_link_frequencies; i++)
   pr_info("link-frequencies %u value %llu\n", i,
    vep->link_frequencies[i]);
 }

 pr_debug("===== end V4L2 endpoint properties\n");

 return 0;
}
