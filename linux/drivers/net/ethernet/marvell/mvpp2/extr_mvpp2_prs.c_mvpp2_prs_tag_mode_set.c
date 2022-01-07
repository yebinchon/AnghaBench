
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2 {int dummy; } ;


 int EINVAL ;
 int MVPP2_PRS_DSA ;
 int MVPP2_PRS_EDSA ;
 int MVPP2_PRS_TAGGED ;
 int MVPP2_PRS_UNTAGGED ;




 int mvpp2_prs_dsa_tag_set (struct mvpp2*,int,int,int ,int ) ;

int mvpp2_prs_tag_mode_set(struct mvpp2 *priv, int port, int type)
{
 switch (type) {
 case 130:

  mvpp2_prs_dsa_tag_set(priv, port, 1,
          MVPP2_PRS_TAGGED, MVPP2_PRS_EDSA);
  mvpp2_prs_dsa_tag_set(priv, port, 1,
          MVPP2_PRS_UNTAGGED, MVPP2_PRS_EDSA);

  mvpp2_prs_dsa_tag_set(priv, port, 0,
          MVPP2_PRS_TAGGED, MVPP2_PRS_DSA);
  mvpp2_prs_dsa_tag_set(priv, port, 0,
          MVPP2_PRS_UNTAGGED, MVPP2_PRS_DSA);
  break;

 case 131:

  mvpp2_prs_dsa_tag_set(priv, port, 1,
          MVPP2_PRS_TAGGED, MVPP2_PRS_DSA);
  mvpp2_prs_dsa_tag_set(priv, port, 1,
          MVPP2_PRS_UNTAGGED, MVPP2_PRS_DSA);

  mvpp2_prs_dsa_tag_set(priv, port, 0,
          MVPP2_PRS_TAGGED, MVPP2_PRS_EDSA);
  mvpp2_prs_dsa_tag_set(priv, port, 0,
          MVPP2_PRS_UNTAGGED, MVPP2_PRS_EDSA);
  break;

 case 129:
 case 128:

  mvpp2_prs_dsa_tag_set(priv, port, 0,
          MVPP2_PRS_TAGGED, MVPP2_PRS_DSA);
  mvpp2_prs_dsa_tag_set(priv, port, 0,
          MVPP2_PRS_UNTAGGED, MVPP2_PRS_DSA);
  mvpp2_prs_dsa_tag_set(priv, port, 0,
          MVPP2_PRS_TAGGED, MVPP2_PRS_EDSA);
  mvpp2_prs_dsa_tag_set(priv, port, 0,
          MVPP2_PRS_UNTAGGED, MVPP2_PRS_EDSA);
  break;

 default:
  if ((type < 0) || (type > 130))
   return -EINVAL;
 }

 return 0;
}
