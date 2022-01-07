
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfspi {int rx_cpck_len; } ;



__attribute__((used)) static inline int forward_to_spi_cmd(struct cfspi *cfspi)
{
 return cfspi->rx_cpck_len;
}
