
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int EINVAL ;
 int le16_to_cpup (void*) ;
 int le32_to_cpup (void*) ;

__attribute__((used)) static int fw_parse(const uint8_t **pmem, uint16_t *ptype, uint32_t *paddr,
  uint16_t *plen, const uint8_t **pdat)
{
 uint16_t checksum[2];
 const uint8_t *mem;
 const uint8_t *end;
 mem = *pmem;
 *ptype = le16_to_cpup((void *)&mem[0]);
 *paddr = le32_to_cpup((void *)&mem[2]);
 *plen = le16_to_cpup((void *)&mem[6]);
 *pdat = &mem[8];

 end = &mem[8 + *plen];
 checksum[0] = le16_to_cpup((void *)end);
 for (checksum[1] = 0; mem < end; ++mem)
  checksum[1] += *mem;
 if (checksum[0] != checksum[1])
  return -EINVAL;

 *pmem += 10 + *plen;
 return 0;
}
