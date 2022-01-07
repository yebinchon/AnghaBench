
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct i40e_profile_segment {int name; int version; } ;
struct TYPE_2__ {int offset; int size; int type; } ;
struct i40e_profile_section_header {int tbl_size; int data_end; TYPE_1__ section; } ;
struct i40e_profile_info {int name; int reserved; int op; int version; int track_id; } ;
struct i40e_hw {int dummy; } ;
typedef int i40e_status ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_DDP_NAME_SIZE ;
 int I40E_DDP_REMOVE_TRACKID ;
 int SECTION_TYPE_INFO ;
 int i40e_aq_write_ddp (struct i40e_hw*,void*,int,int ,int *,int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static enum i40e_status_code
i40e_del_pinfo(struct i40e_hw *hw, struct i40e_profile_segment *profile,
        u8 *profile_info_sec, u32 track_id)
{
 struct i40e_profile_section_header *sec;
 struct i40e_profile_info *pinfo;
 i40e_status status;
 u32 offset = 0, info = 0;

 sec = (struct i40e_profile_section_header *)profile_info_sec;
 sec->tbl_size = 1;
 sec->data_end = sizeof(struct i40e_profile_section_header) +
   sizeof(struct i40e_profile_info);
 sec->section.type = SECTION_TYPE_INFO;
 sec->section.offset = sizeof(struct i40e_profile_section_header);
 sec->section.size = sizeof(struct i40e_profile_info);
 pinfo = (struct i40e_profile_info *)(profile_info_sec +
          sec->section.offset);
 pinfo->track_id = track_id;
 pinfo->version = profile->version;
 pinfo->op = I40E_DDP_REMOVE_TRACKID;


 memset(pinfo->reserved, 0, sizeof(pinfo->reserved));
 memcpy(pinfo->name, profile->name, I40E_DDP_NAME_SIZE);

 status = i40e_aq_write_ddp(hw, (void *)sec, sec->data_end,
       track_id, &offset, &info, ((void*)0));
 return status;
}
