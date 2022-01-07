
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_tlv_hdr {int dummy; } ;
struct i2400m_l3l4_hdr {int pl; int length; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;


 int d_fnend (int,struct device*,char*,struct i2400m*,struct i2400m_l3l4_hdr const*,size_t,char const*) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct i2400m_l3l4_hdr const*,size_t,char const*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_report_state_parse_tlv (struct i2400m*,struct i2400m_tlv_hdr const*,char const*) ;
 struct i2400m_tlv_hdr* i2400m_tlv_buffer_walk (struct i2400m*,int *,size_t,struct i2400m_tlv_hdr const*) ;
 size_t le16_to_cpu (int ) ;

__attribute__((used)) static
void i2400m_report_state_hook(struct i2400m *i2400m,
         const struct i2400m_l3l4_hdr *l3l4_hdr,
         size_t size, const char *tag)
{
 struct device *dev = i2400m_dev(i2400m);
 const struct i2400m_tlv_hdr *tlv;
 size_t tlv_size = le16_to_cpu(l3l4_hdr->length);

 d_fnstart(4, dev, "(i2400m %p, l3l4_hdr %p, size %zu, %s)\n",
    i2400m, l3l4_hdr, size, tag);
 tlv = ((void*)0);

 while ((tlv = i2400m_tlv_buffer_walk(i2400m, &l3l4_hdr->pl,
          tlv_size, tlv)))
  i2400m_report_state_parse_tlv(i2400m, tlv, tag);
 d_fnend(4, dev, "(i2400m %p, l3l4_hdr %p, size %zu, %s) = void\n",
  i2400m, l3l4_hdr, size, tag);
}
