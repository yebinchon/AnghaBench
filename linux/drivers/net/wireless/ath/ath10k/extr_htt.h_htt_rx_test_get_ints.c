
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htt_rx_test {scalar_t__ payload; } ;
typedef int __le32 ;



__attribute__((used)) static inline __le32 *htt_rx_test_get_ints(struct htt_rx_test *rx_test)
{
 return (__le32 *)rx_test->payload;
}
