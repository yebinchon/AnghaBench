
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_raw_desc {int m0; } ;


 int FPQNUM ;
 scalar_t__ GET_VAL (int ,int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static bool is_rx_desc(struct xgene_enet_raw_desc *raw_desc)
{
 return GET_VAL(FPQNUM, le64_to_cpu(raw_desc->m0)) ? 1 : 0;
}
