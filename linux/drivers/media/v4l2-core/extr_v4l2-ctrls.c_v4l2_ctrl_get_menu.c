
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
const char * const *v4l2_ctrl_get_menu(u32 id)
{
 static const char * const mpeg_audio_sampling_freq[] = {
  "44.1 kHz",
  "48 kHz",
  "32 kHz",
  ((void*)0)
 };
 static const char * const mpeg_audio_encoding[] = {
  "MPEG-1/2 Layer I",
  "MPEG-1/2 Layer II",
  "MPEG-1/2 Layer III",
  "MPEG-2/4 AAC",
  "AC-3",
  ((void*)0)
 };
 static const char * const mpeg_audio_l1_bitrate[] = {
  "32 kbps",
  "64 kbps",
  "96 kbps",
  "128 kbps",
  "160 kbps",
  "192 kbps",
  "224 kbps",
  "256 kbps",
  "288 kbps",
  "320 kbps",
  "352 kbps",
  "384 kbps",
  "416 kbps",
  "448 kbps",
  ((void*)0)
 };
 static const char * const mpeg_audio_l2_bitrate[] = {
  "32 kbps",
  "48 kbps",
  "56 kbps",
  "64 kbps",
  "80 kbps",
  "96 kbps",
  "112 kbps",
  "128 kbps",
  "160 kbps",
  "192 kbps",
  "224 kbps",
  "256 kbps",
  "320 kbps",
  "384 kbps",
  ((void*)0)
 };
 static const char * const mpeg_audio_l3_bitrate[] = {
  "32 kbps",
  "40 kbps",
  "48 kbps",
  "56 kbps",
  "64 kbps",
  "80 kbps",
  "96 kbps",
  "112 kbps",
  "128 kbps",
  "160 kbps",
  "192 kbps",
  "224 kbps",
  "256 kbps",
  "320 kbps",
  ((void*)0)
 };
 static const char * const mpeg_audio_ac3_bitrate[] = {
  "32 kbps",
  "40 kbps",
  "48 kbps",
  "56 kbps",
  "64 kbps",
  "80 kbps",
  "96 kbps",
  "112 kbps",
  "128 kbps",
  "160 kbps",
  "192 kbps",
  "224 kbps",
  "256 kbps",
  "320 kbps",
  "384 kbps",
  "448 kbps",
  "512 kbps",
  "576 kbps",
  "640 kbps",
  ((void*)0)
 };
 static const char * const mpeg_audio_mode[] = {
  "Stereo",
  "Joint Stereo",
  "Dual",
  "Mono",
  ((void*)0)
 };
 static const char * const mpeg_audio_mode_extension[] = {
  "Bound 4",
  "Bound 8",
  "Bound 12",
  "Bound 16",
  ((void*)0)
 };
 static const char * const mpeg_audio_emphasis[] = {
  "No Emphasis",
  "50/15 us",
  "CCITT J17",
  ((void*)0)
 };
 static const char * const mpeg_audio_crc[] = {
  "No CRC",
  "16-bit CRC",
  ((void*)0)
 };
 static const char * const mpeg_audio_dec_playback[] = {
  "Auto",
  "Stereo",
  "Left",
  "Right",
  "Mono",
  "Swapped Stereo",
  ((void*)0)
 };
 static const char * const mpeg_video_encoding[] = {
  "MPEG-1",
  "MPEG-2",
  "MPEG-4 AVC",
  ((void*)0)
 };
 static const char * const mpeg_video_aspect[] = {
  "1x1",
  "4x3",
  "16x9",
  "2.21x1",
  ((void*)0)
 };
 static const char * const mpeg_video_bitrate_mode[] = {
  "Variable Bitrate",
  "Constant Bitrate",
  ((void*)0)
 };
 static const char * const mpeg_stream_type[] = {
  "MPEG-2 Program Stream",
  "MPEG-2 Transport Stream",
  "MPEG-1 System Stream",
  "MPEG-2 DVD-compatible Stream",
  "MPEG-1 VCD-compatible Stream",
  "MPEG-2 SVCD-compatible Stream",
  ((void*)0)
 };
 static const char * const mpeg_stream_vbi_fmt[] = {
  "No VBI",
  "Private Packet, IVTV Format",
  ((void*)0)
 };
 static const char * const camera_power_line_frequency[] = {
  "Disabled",
  "50 Hz",
  "60 Hz",
  "Auto",
  ((void*)0)
 };
 static const char * const camera_exposure_auto[] = {
  "Auto Mode",
  "Manual Mode",
  "Shutter Priority Mode",
  "Aperture Priority Mode",
  ((void*)0)
 };
 static const char * const camera_exposure_metering[] = {
  "Average",
  "Center Weighted",
  "Spot",
  "Matrix",
  ((void*)0)
 };
 static const char * const camera_auto_focus_range[] = {
  "Auto",
  "Normal",
  "Macro",
  "Infinity",
  ((void*)0)
 };
 static const char * const colorfx[] = {
  "None",
  "Black & White",
  "Sepia",
  "Negative",
  "Emboss",
  "Sketch",
  "Sky Blue",
  "Grass Green",
  "Skin Whiten",
  "Vivid",
  "Aqua",
  "Art Freeze",
  "Silhouette",
  "Solarization",
  "Antique",
  "Set Cb/Cr",
  ((void*)0)
 };
 static const char * const auto_n_preset_white_balance[] = {
  "Manual",
  "Auto",
  "Incandescent",
  "Fluorescent",
  "Fluorescent H",
  "Horizon",
  "Daylight",
  "Flash",
  "Cloudy",
  "Shade",
  ((void*)0),
 };
 static const char * const camera_iso_sensitivity_auto[] = {
  "Manual",
  "Auto",
  ((void*)0)
 };
 static const char * const scene_mode[] = {
  "None",
  "Backlight",
  "Beach/Snow",
  "Candle Light",
  "Dusk/Dawn",
  "Fall Colors",
  "Fireworks",
  "Landscape",
  "Night",
  "Party/Indoor",
  "Portrait",
  "Sports",
  "Sunset",
  "Text",
  ((void*)0)
 };
 static const char * const tune_emphasis[] = {
  "None",
  "50 Microseconds",
  "75 Microseconds",
  ((void*)0),
 };
 static const char * const header_mode[] = {
  "Separate Buffer",
  "Joined With 1st Frame",
  ((void*)0),
 };
 static const char * const multi_slice[] = {
  "Single",
  "Max Macroblocks",
  "Max Bytes",
  ((void*)0),
 };
 static const char * const entropy_mode[] = {
  "CAVLC",
  "CABAC",
  ((void*)0),
 };
 static const char * const mpeg_h264_level[] = {
  "1",
  "1b",
  "1.1",
  "1.2",
  "1.3",
  "2",
  "2.1",
  "2.2",
  "3",
  "3.1",
  "3.2",
  "4",
  "4.1",
  "4.2",
  "5",
  "5.1",
  ((void*)0),
 };
 static const char * const h264_loop_filter[] = {
  "Enabled",
  "Disabled",
  "Disabled at Slice Boundary",
  ((void*)0),
 };
 static const char * const h264_profile[] = {
  "Baseline",
  "Constrained Baseline",
  "Main",
  "Extended",
  "High",
  "High 10",
  "High 422",
  "High 444 Predictive",
  "High 10 Intra",
  "High 422 Intra",
  "High 444 Intra",
  "CAVLC 444 Intra",
  "Scalable Baseline",
  "Scalable High",
  "Scalable High Intra",
  "Stereo High",
  "Multiview High",
  ((void*)0),
 };
 static const char * const vui_sar_idc[] = {
  "Unspecified",
  "1:1",
  "12:11",
  "10:11",
  "16:11",
  "40:33",
  "24:11",
  "20:11",
  "32:11",
  "80:33",
  "18:11",
  "15:11",
  "64:33",
  "160:99",
  "4:3",
  "3:2",
  "2:1",
  "Extended SAR",
  ((void*)0),
 };
 static const char * const h264_fp_arrangement_type[] = {
  "Checkerboard",
  "Column",
  "Row",
  "Side by Side",
  "Top Bottom",
  "Temporal",
  ((void*)0),
 };
 static const char * const h264_fmo_map_type[] = {
  "Interleaved Slices",
  "Scattered Slices",
  "Foreground with Leftover",
  "Box Out",
  "Raster Scan",
  "Wipe Scan",
  "Explicit",
  ((void*)0),
 };
 static const char * const h264_decode_mode[] = {
  "Slice-Based",
  "Frame-Based",
  ((void*)0),
 };
 static const char * const h264_start_code[] = {
  "No Start Code",
  "Annex B Start Code",
  ((void*)0),
 };
 static const char * const mpeg_mpeg2_level[] = {
  "Low",
  "Main",
  "High 1440",
  "High",
  ((void*)0),
 };
 static const char * const mpeg2_profile[] = {
  "Simple",
  "Main",
  "SNR Scalable",
  "Spatially Scalable",
  "High",
  ((void*)0),
 };
 static const char * const mpeg_mpeg4_level[] = {
  "0",
  "0b",
  "1",
  "2",
  "3",
  "3b",
  "4",
  "5",
  ((void*)0),
 };
 static const char * const mpeg4_profile[] = {
  "Simple",
  "Advanced Simple",
  "Core",
  "Simple Scalable",
  "Advanced Coding Efficiency",
  ((void*)0),
 };

 static const char * const vpx_golden_frame_sel[] = {
  "Use Previous Frame",
  "Use Previous Specific Frame",
  ((void*)0),
 };
 static const char * const vp8_profile[] = {
  "0",
  "1",
  "2",
  "3",
  ((void*)0),
 };
 static const char * const vp9_profile[] = {
  "0",
  "1",
  "2",
  "3",
  ((void*)0),
 };

 static const char * const flash_led_mode[] = {
  "Off",
  "Flash",
  "Torch",
  ((void*)0),
 };
 static const char * const flash_strobe_source[] = {
  "Software",
  "External",
  ((void*)0),
 };

 static const char * const jpeg_chroma_subsampling[] = {
  "4:4:4",
  "4:2:2",
  "4:2:0",
  "4:1:1",
  "4:1:0",
  "Gray",
  ((void*)0),
 };
 static const char * const dv_tx_mode[] = {
  "DVI-D",
  "HDMI",
  ((void*)0),
 };
 static const char * const dv_rgb_range[] = {
  "Automatic",
  "RGB Limited Range (16-235)",
  "RGB Full Range (0-255)",
  ((void*)0),
 };
 static const char * const dv_it_content_type[] = {
  "Graphics",
  "Photo",
  "Cinema",
  "Game",
  "No IT Content",
  ((void*)0),
 };
 static const char * const detect_md_mode[] = {
  "Disabled",
  "Global",
  "Threshold Grid",
  "Region Grid",
  ((void*)0),
 };

 static const char * const hevc_profile[] = {
  "Main",
  "Main Still Picture",
  "Main 10",
  ((void*)0),
 };
 static const char * const hevc_level[] = {
  "1",
  "2",
  "2.1",
  "3",
  "3.1",
  "4",
  "4.1",
  "5",
  "5.1",
  "5.2",
  "6",
  "6.1",
  "6.2",
  ((void*)0),
 };
 static const char * const hevc_hierarchial_coding_type[] = {
  "B",
  "P",
  ((void*)0),
 };
 static const char * const hevc_refresh_type[] = {
  "None",
  "CRA",
  "IDR",
  ((void*)0),
 };
 static const char * const hevc_size_of_length_field[] = {
  "0",
  "1",
  "2",
  "4",
  ((void*)0),
 };
 static const char * const hevc_tier[] = {
  "Main",
  "High",
  ((void*)0),
 };
 static const char * const hevc_loop_filter_mode[] = {
  "Disabled",
  "Enabled",
  "Disabled at slice boundary",
  "NULL",
 };

 switch (id) {
 case 162:
  return mpeg_audio_sampling_freq;
 case 168:
  return mpeg_audio_encoding;
 case 167:
  return mpeg_audio_l1_bitrate;
 case 166:
  return mpeg_audio_l2_bitrate;
 case 165:
  return mpeg_audio_l3_bitrate;
 case 173:
  return mpeg_audio_ac3_bitrate;
 case 164:
  return mpeg_audio_mode;
 case 163:
  return mpeg_audio_mode_extension;
 case 169:
  return mpeg_audio_emphasis;
 case 172:
  return mpeg_audio_crc;
 case 170:
 case 171:
  return mpeg_audio_dec_playback;
 case 157:
  return mpeg_video_encoding;
 case 159:
  return mpeg_video_aspect;
 case 158:
  return mpeg_video_bitrate_mode;
 case 161:
  return mpeg_stream_type;
 case 160:
  return mpeg_stream_vbi_fmt;
 case 131:
  return camera_power_line_frequency;
 case 179:
  return camera_exposure_auto;
 case 178:
  return camera_exposure_metering;
 case 188:
  return camera_auto_focus_range;
 case 186:
  return colorfx;
 case 187:
  return auto_n_preset_white_balance;
 case 175:
  return camera_iso_sensitivity_auto;
 case 130:
  return scene_mode;
 case 128:
  return tune_emphasis;
 case 129:
  return tune_emphasis;
 case 177:
  return flash_led_mode;
 case 176:
  return flash_strobe_source;
 case 147:
  return header_mode;
 case 135:
  return multi_slice;
 case 155:
  return entropy_mode;
 case 153:
  return mpeg_h264_level;
 case 152:
  return h264_loop_filter;
 case 151:
  return h264_profile;
 case 148:
  return vui_sar_idc;
 case 150:
  return h264_fp_arrangement_type;
 case 154:
  return h264_fmo_map_type;
 case 156:
  return h264_decode_mode;
 case 149:
  return h264_start_code;
 case 139:
  return mpeg_mpeg2_level;
 case 138:
  return mpeg2_profile;
 case 137:
  return mpeg_mpeg4_level;
 case 136:
  return mpeg4_profile;
 case 132:
  return vpx_golden_frame_sel;
 case 134:
  return vp8_profile;
 case 133:
  return vp9_profile;
 case 174:
  return jpeg_chroma_subsampling;
 case 181:
  return dv_tx_mode;
 case 180:
 case 183:
  return dv_rgb_range;
 case 182:
 case 184:
  return dv_it_content_type;
 case 185:
  return detect_md_mode;
 case 143:
  return hevc_profile;
 case 145:
  return hevc_level;
 case 146:
  return hevc_hierarchial_coding_type;
 case 142:
  return hevc_refresh_type;
 case 141:
  return hevc_size_of_length_field;
 case 140:
  return hevc_tier;
 case 144:
  return hevc_loop_filter_mode;

 default:
  return ((void*)0);
 }
}
