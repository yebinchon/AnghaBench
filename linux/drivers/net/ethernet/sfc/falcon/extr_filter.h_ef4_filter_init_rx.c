
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_filter_spec {int priority; int flags; unsigned int dmaq_id; int rss_context; } ;
typedef enum ef4_filter_priority { ____Placeholder_ef4_filter_priority } ef4_filter_priority ;
typedef enum ef4_filter_flags { ____Placeholder_ef4_filter_flags } ef4_filter_flags ;


 int EF4_FILTER_FLAG_RX ;
 int EF4_FILTER_RSS_CONTEXT_DEFAULT ;
 int memset (struct ef4_filter_spec*,int ,int) ;

__attribute__((used)) static inline void ef4_filter_init_rx(struct ef4_filter_spec *spec,
          enum ef4_filter_priority priority,
          enum ef4_filter_flags flags,
          unsigned rxq_id)
{
 memset(spec, 0, sizeof(*spec));
 spec->priority = priority;
 spec->flags = EF4_FILTER_FLAG_RX | flags;
 spec->rss_context = EF4_FILTER_RSS_CONTEXT_DEFAULT;
 spec->dmaq_id = rxq_id;
}
