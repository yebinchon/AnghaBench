
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CQHCI_EXTERNAL_TIMEOUT ;
 unsigned int CQHCI_HOST_CRC ;
 unsigned int CQHCI_HOST_TIMEOUT ;
 int EILSEQ ;
 int EIO ;
 int ETIMEDOUT ;

__attribute__((used)) static int cqhci_error_from_flags(unsigned int flags)
{
 if (!flags)
  return 0;


 if (flags & CQHCI_HOST_CRC)
  return -EILSEQ;

 if (flags & (CQHCI_EXTERNAL_TIMEOUT | CQHCI_HOST_TIMEOUT))
  return -ETIMEDOUT;

 return -EIO;
}
