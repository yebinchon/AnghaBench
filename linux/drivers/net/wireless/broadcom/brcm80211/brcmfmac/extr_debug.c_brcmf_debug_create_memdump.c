
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_bus {int dev; } ;


 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int brcmf_bus_get_memdump (struct brcmf_bus*,void*,size_t) ;
 size_t brcmf_bus_get_ramsize (struct brcmf_bus*) ;
 int dev_coredumpv (int ,void*,size_t,int ) ;
 int memcpy (void*,void const*,size_t) ;
 int vfree (void*) ;
 void* vzalloc (size_t) ;

int brcmf_debug_create_memdump(struct brcmf_bus *bus, const void *data,
          size_t len)
{
 void *dump;
 size_t ramsize;
 int err;

 ramsize = brcmf_bus_get_ramsize(bus);
 if (!ramsize)
  return -ENOTSUPP;

 dump = vzalloc(len + ramsize);
 if (!dump)
  return -ENOMEM;

 if (data && len > 0)
  memcpy(dump, data, len);
 err = brcmf_bus_get_memdump(bus, dump + len, ramsize);
 if (err) {
  vfree(dump);
  return err;
 }

 dev_coredumpv(bus->dev, dump, len + ramsize, GFP_KERNEL);

 return 0;
}
