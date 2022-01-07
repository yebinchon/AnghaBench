
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_filter_spec {unsigned int dmaq_id; int flags; int priority; } ;


 int EF4_FILTER_FLAG_TX ;
 int EF4_FILTER_PRI_REQUIRED ;
 int memset (struct ef4_filter_spec*,int ,int) ;

__attribute__((used)) static inline void ef4_filter_init_tx(struct ef4_filter_spec *spec,
          unsigned txq_id)
{
 memset(spec, 0, sizeof(*spec));
 spec->priority = EF4_FILTER_PRI_REQUIRED;
 spec->flags = EF4_FILTER_FLAG_TX;
 spec->dmaq_id = txq_id;
}
