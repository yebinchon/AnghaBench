
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int buf_size; } ;
struct TYPE_5__ {TYPE_1__ tx; } ;
struct TYPE_6__ {TYPE_2__ buf; } ;
struct ksz_desc {TYPE_3__ sw; } ;



__attribute__((used)) static inline void set_tx_len(struct ksz_desc *desc, u32 len)
{
 desc->sw.buf.tx.buf_size = len;
}
