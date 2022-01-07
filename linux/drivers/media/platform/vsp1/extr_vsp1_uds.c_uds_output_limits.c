
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UDS_MAX_FACTOR ;
 int UDS_MAX_SIZE ;
 int UDS_MIN_FACTOR ;
 int UDS_MIN_SIZE ;
 unsigned int max (int ,int ) ;
 unsigned int min (int ,int ) ;
 int uds_output_size (unsigned int,int ) ;

__attribute__((used)) static void uds_output_limits(unsigned int input,
         unsigned int *minimum, unsigned int *maximum)
{
 *minimum = max(uds_output_size(input, UDS_MAX_FACTOR), UDS_MIN_SIZE);
 *maximum = min(uds_output_size(input, UDS_MIN_FACTOR), UDS_MAX_SIZE);
}
