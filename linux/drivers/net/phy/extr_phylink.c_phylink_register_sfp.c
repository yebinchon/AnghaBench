
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {int sfp_bus; } ;
struct fwnode_reference_args {int fwnode; } ;
struct fwnode_handle {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int fwnode_property_get_reference_args (struct fwnode_handle*,char*,int *,int ,int ,struct fwnode_reference_args*) ;
 int phylink_err (struct phylink*,char*,int) ;
 int sfp_phylink_ops ;
 int sfp_register_upstream (int ,struct phylink*,int *) ;

__attribute__((used)) static int phylink_register_sfp(struct phylink *pl,
    struct fwnode_handle *fwnode)
{
 struct fwnode_reference_args ref;
 int ret;

 if (!fwnode)
  return 0;

 ret = fwnode_property_get_reference_args(fwnode, "sfp", ((void*)0),
       0, 0, &ref);
 if (ret < 0) {
  if (ret == -ENOENT)
   return 0;

  phylink_err(pl, "unable to parse \"sfp\" node: %d\n",
       ret);
  return ret;
 }

 pl->sfp_bus = sfp_register_upstream(ref.fwnode, pl, &sfp_phylink_ops);
 if (!pl->sfp_bus)
  return -ENOMEM;

 return 0;
}
