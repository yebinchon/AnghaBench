
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fwht_pixfmt_info {int dummy; } ;
struct fwht_cframe_hdr {int flags; int version; int height; int width; } ;


 unsigned int MAX_HEIGHT ;
 unsigned int MAX_WIDTH ;
 unsigned int MIN_HEIGHT ;
 unsigned int MIN_WIDTH ;
 struct v4l2_fwht_pixfmt_info* info_from_header (struct fwht_cframe_hdr const*) ;
 unsigned int ntohl (int ) ;
 int validate_by_version (unsigned int,unsigned int) ;

__attribute__((used)) static bool is_header_valid(const struct fwht_cframe_hdr *p_hdr)
{
 const struct v4l2_fwht_pixfmt_info *info;
 unsigned int w = ntohl(p_hdr->width);
 unsigned int h = ntohl(p_hdr->height);
 unsigned int version = ntohl(p_hdr->version);
 unsigned int flags = ntohl(p_hdr->flags);

 if (w < MIN_WIDTH || w > MAX_WIDTH || h < MIN_HEIGHT || h > MAX_HEIGHT)
  return 0;

 if (!validate_by_version(flags, version))
  return 0;

 info = info_from_header(p_hdr);
 if (!info)
  return 0;
 return 1;
}
