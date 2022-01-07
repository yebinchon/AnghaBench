
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_bcf_hdr {int dummy; } ;
struct i2400m {int fw_name; } ;
struct device {int dummy; } ;


 int ERESTARTSYS ;
 int d_printf (int,struct device*,char*) ;
 int dev_err (struct device*,char*,int ,int) ;
 scalar_t__ i2400m_boot_is_signed (struct i2400m*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_dnload_init_nonsigned (struct i2400m*) ;
 int i2400m_dnload_init_signed (struct i2400m*,struct i2400m_bcf_hdr const*) ;

__attribute__((used)) static
int i2400m_dnload_init(struct i2400m *i2400m,
         const struct i2400m_bcf_hdr *bcf_hdr)
{
 int result;
 struct device *dev = i2400m_dev(i2400m);

 if (i2400m_boot_is_signed(i2400m)) {
  d_printf(1, dev, "signed boot\n");
  result = i2400m_dnload_init_signed(i2400m, bcf_hdr);
  if (result == -ERESTARTSYS)
   return result;
  if (result < 0)
   dev_err(dev, "firmware %s: signed boot download "
    "initialization failed: %d\n",
    i2400m->fw_name, result);
 } else {

  d_printf(1, dev, "non-signed boot\n");
  result = i2400m_dnload_init_nonsigned(i2400m);
  if (result == -ERESTARTSYS)
   return result;
  if (result < 0)
   dev_err(dev, "firmware %s: non-signed download "
    "initialization failed: %d\n",
    i2400m->fw_name, result);
 }
 return result;
}
