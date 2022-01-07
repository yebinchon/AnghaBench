
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_mib_desc {int size; int offset; } ;
struct b53_device {int stats_mutex; } ;


 int B53_MIB_PAGE (int) ;
 struct b53_mib_desc* b53_get_mib (struct b53_device*) ;
 unsigned int b53_get_mib_size (struct b53_device*) ;
 int b53_read32 (struct b53_device*,int ,int ,scalar_t__*) ;
 int b53_read64 (struct b53_device*,int ,int ,scalar_t__*) ;
 scalar_t__ is5365 (struct b53_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void b53_get_ethtool_stats(struct dsa_switch *ds, int port, uint64_t *data)
{
 struct b53_device *dev = ds->priv;
 const struct b53_mib_desc *mibs = b53_get_mib(dev);
 unsigned int mib_size = b53_get_mib_size(dev);
 const struct b53_mib_desc *s;
 unsigned int i;
 u64 val = 0;

 if (is5365(dev) && port == 5)
  port = 8;

 mutex_lock(&dev->stats_mutex);

 for (i = 0; i < mib_size; i++) {
  s = &mibs[i];

  if (s->size == 8) {
   b53_read64(dev, B53_MIB_PAGE(port), s->offset, &val);
  } else {
   u32 val32;

   b53_read32(dev, B53_MIB_PAGE(port), s->offset,
       &val32);
   val = val32;
  }
  data[i] = (u64)val;
 }

 mutex_unlock(&dev->stats_mutex);
}
