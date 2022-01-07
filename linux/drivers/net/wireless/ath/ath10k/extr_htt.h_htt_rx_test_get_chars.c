
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct htt_rx_test {int num_ints; int * payload; } ;
typedef int __le32 ;



__attribute__((used)) static inline u8 *htt_rx_test_get_chars(struct htt_rx_test *rx_test)
{
 return rx_test->payload + (rx_test->num_ints * sizeof(__le32));
}
