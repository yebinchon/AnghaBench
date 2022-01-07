
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETH_ALEN ;
 int memcpy (unsigned char*,unsigned char*,int ) ;

__attribute__((used)) static void CheckSourceAddress(unsigned char *frame, unsigned char *hw_addr)
{
 unsigned char SRBit;

 if ((((unsigned long) frame[1 + 6]) & ~0x01) != 0)

  return;
 if ((unsigned short) frame[1 + 10] != 0)
  return;
 SRBit = frame[1 + 6] & 0x01;
 memcpy(&frame[1 + 6], hw_addr, ETH_ALEN);
 frame[8] |= SRBit;
}
