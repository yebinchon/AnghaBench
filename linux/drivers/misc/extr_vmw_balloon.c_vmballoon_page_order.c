
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vmballoon_page_size_type { ____Placeholder_vmballoon_page_size_type } vmballoon_page_size_type ;


 unsigned int VMW_BALLOON_2M_ORDER ;
 int VMW_BALLOON_2M_PAGE ;

__attribute__((used)) static inline
unsigned int vmballoon_page_order(enum vmballoon_page_size_type page_size)
{
 return page_size == VMW_BALLOON_2M_PAGE ? VMW_BALLOON_2M_ORDER : 0;
}
