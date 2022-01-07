
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct falcon_spi_device {unsigned int const munge_address; } ;



__attribute__((used)) static inline u8
falcon_spi_munge_command(const struct falcon_spi_device *spi,
    const u8 command, const unsigned int address)
{
 return command | (((address >> 8) & spi->munge_address) << 3);
}
