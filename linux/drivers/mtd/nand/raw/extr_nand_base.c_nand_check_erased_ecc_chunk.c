
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int,int) ;
 int nand_check_erased_buf (void*,int,int) ;

int nand_check_erased_ecc_chunk(void *data, int datalen,
    void *ecc, int ecclen,
    void *extraoob, int extraooblen,
    int bitflips_threshold)
{
 int data_bitflips = 0, ecc_bitflips = 0, extraoob_bitflips = 0;

 data_bitflips = nand_check_erased_buf(data, datalen,
           bitflips_threshold);
 if (data_bitflips < 0)
  return data_bitflips;

 bitflips_threshold -= data_bitflips;

 ecc_bitflips = nand_check_erased_buf(ecc, ecclen, bitflips_threshold);
 if (ecc_bitflips < 0)
  return ecc_bitflips;

 bitflips_threshold -= ecc_bitflips;

 extraoob_bitflips = nand_check_erased_buf(extraoob, extraooblen,
        bitflips_threshold);
 if (extraoob_bitflips < 0)
  return extraoob_bitflips;

 if (data_bitflips)
  memset(data, 0xff, datalen);

 if (ecc_bitflips)
  memset(ecc, 0xff, ecclen);

 if (extraoob_bitflips)
  memset(extraoob, 0xff, extraooblen);

 return data_bitflips + ecc_bitflips + extraoob_bitflips;
}
