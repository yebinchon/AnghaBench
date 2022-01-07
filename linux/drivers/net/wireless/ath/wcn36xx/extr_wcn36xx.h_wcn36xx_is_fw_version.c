
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wcn36xx {scalar_t__ fw_major; scalar_t__ fw_minor; scalar_t__ fw_version; scalar_t__ fw_revision; } ;



__attribute__((used)) static inline bool wcn36xx_is_fw_version(struct wcn36xx *wcn,
      u8 major,
      u8 minor,
      u8 version,
      u8 revision)
{
 return (wcn->fw_major == major &&
  wcn->fw_minor == minor &&
  wcn->fw_version == version &&
  wcn->fw_revision == revision);
}
