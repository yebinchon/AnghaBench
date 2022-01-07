
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
const char *v4l2_ctrl_get_name(u32 id)
{
 switch (id) {


 case 135: return "User Controls";
 case 445: return "Brightness";
 case 438: return "Contrast";
 case 151: return "Saturation";
 case 390: return "Hue";
 case 460: return "Volume";
 case 473: return "Balance";
 case 472: return "Bass";
 case 461: return "Treble";
 case 462: return "Mute";
 case 463: return "Loudness";
 case 447: return "Black Level";
 case 451: return "White Balance, Automatic";
 case 430: return "Do White Balance";
 case 164: return "Red Balance";
 case 446: return "Blue Balance";
 case 393: return "Gamma";
 case 419: return "Exposure";
 case 458: return "Gain, Automatic";
 case 394: return "Gain";
 case 391: return "Horizontal Flip";
 case 133: return "Vertical Flip";
 case 187: return "Power Line Frequency";
 case 389: return "Hue, Automatic";
 case 132: return "White Balance Temperature";
 case 149: return "Sharpness";
 case 450: return "Backlight Compensation";
 case 443: return "Chroma AGC";
 case 439: return "Color Killer";
 case 441: return "Color Effects";
 case 459: return "Brightness, Automatic";
 case 449: return "Band-Stop Filter";
 case 152: return "Rotate";
 case 448: return "Background Color";
 case 442: return "Chroma Gain";
 case 388: return "Illuminator 1";
 case 387: return "Illuminator 2";
 case 373: return "Min Number of Capture Buffers";
 case 372: return "Min Number of Output Buffers";
 case 475: return "Alpha Component";
 case 440: return "Color Effects, CbCr";





 case 357: return "Codec Controls";
 case 350: return "Stream Type";
 case 352: return "Stream PMT Program ID";
 case 354: return "Stream Audio Program ID";
 case 351: return "Stream Video Program ID";
 case 353: return "Stream PCR Program ID";
 case 356: return "Stream PES Audio ID";
 case 355: return "Stream PES Video ID";
 case 349: return "Stream VBI Format";
 case 358: return "Audio Sampling Frequency";
 case 365: return "Audio Encoding";
 case 364: return "Audio Layer I Bitrate";
 case 363: return "Audio Layer II Bitrate";
 case 362: return "Audio Layer III Bitrate";
 case 361: return "Audio Stereo Mode";
 case 360: return "Audio Stereo Mode Extension";
 case 366: return "Audio Emphasis";
 case 369: return "Audio CRC";
 case 359: return "Audio Mute";
 case 371: return "Audio AAC Bitrate";
 case 370: return "Audio AC-3 Bitrate";
 case 367: return "Audio Playback";
 case 368: return "Audio Multilingual Playback";
 case 338: return "Video Encoding";
 case 348: return "Video Aspect";
 case 344: return "Video B Frames";
 case 333: return "Video GOP Size";
 case 334: return "Video GOP Closure";
 case 215: return "Video Pulldown";
 case 346: return "Video Bitrate Mode";
 case 347: return "Video Bitrate";
 case 345: return "Video Peak Bitrate";
 case 212: return "Video Temporal Decimation";
 case 220: return "Video Mute";
 case 219: return "Video Mute YUV";
 case 341: return "Decoder Slice Interface";
 case 342: return "MPEG4 Loop Filter Enable";
 case 343: return "Number of Intra Refresh MBs";
 case 336: return "Frame Level Rate Control Enable";
 case 236: return "H264 MB Level Rate Control";
 case 281: return "Sequence Header Mode";
 case 237: return "Max Number of Reference Pics";
 case 331: return "H263 I-Frame QP Value";
 case 328: return "H263 P-Frame QP Value";
 case 332: return "H263 B-Frame QP Value";
 case 329: return "H263 Minimum QP Value";
 case 330: return "H263 Maximum QP Value";
 case 305: return "H264 I-Frame QP Value";
 case 293: return "H264 P-Frame QP Value";
 case 324: return "H264 B-Frame QP Value";
 case 299: return "H264 Maximum QP Value";
 case 298: return "H264 Minimum QP Value";
 case 327: return "H264 8x8 Transform Enable";
 case 321: return "H264 CPB Buffer Size";
 case 318: return "H264 Entropy Mode";
 case 304: return "H264 I-Frame Period";
 case 303: return "H264 Level";
 case 302: return "H264 Loop Filter Alpha Offset";
 case 301: return "H264 Loop Filter Beta Offset";
 case 300: return "H264 Loop Filter Mode";
 case 296: return "H264 Profile";
 case 285: return "Vertical Size of SAR";
 case 284: return "Horizontal Size of SAR";
 case 283: return "Aspect Ratio VUI Enable";
 case 282: return "VUI Aspect Ratio IDC";
 case 289: return "H264 Enable Frame Packing SEI";
 case 290: return "H264 Set Curr. Frame as Frame0";
 case 291: return "H264 FP Arrangement Type";
 case 317: return "H264 Flexible MB Ordering";
 case 314: return "H264 Map Type for FMO";
 case 312: return "H264 FMO Number of Slice Groups";
 case 316: return "H264 FMO Direction of Change";
 case 315: return "H264 FMO Size of 1st Slice Grp";
 case 313: return "H264 FMO No. of Consecutive MBs";
 case 326: return "H264 Arbitrary Slice Ordering";
 case 325: return "H264 ASO Slice Order";
 case 311: return "Enable H264 Hierarchical Coding";
 case 308: return "H264 Hierarchical Coding Type";
 case 310:return "H264 Number of HC Layers";
 case 309:
        return "H264 Set QP Value for HC Layers";
 case 322:
        return "H264 Constrained Intra Pred";
 case 323: return "H264 Chroma QP Index Offset";
 case 306: return "H264 I-Frame Minimum QP Value";
 case 307: return "H264 I-Frame Maximum QP Value";
 case 294: return "H264 P-Frame Minimum QP Value";
 case 295: return "H264 P-Frame Maximum QP Value";
 case 287: return "H264 Sequence Parameter Set";
 case 297: return "H264 Picture Parameter Set";
 case 292: return "H264 Scaling Matrix";
 case 288: return "H264 Slice Parameters";
 case 319: return "H264 Decode Parameters";
 case 320: return "H264 Decode Mode";
 case 286: return "H264 Start Code";
 case 235: return "MPEG2 Level";
 case 234: return "MPEG2 Profile";
 case 230: return "MPEG4 I-Frame QP Value";
 case 225: return "MPEG4 P-Frame QP Value";
 case 231: return "MPEG4 B-Frame QP Value";
 case 227: return "MPEG4 Minimum QP Value";
 case 228: return "MPEG4 Maximum QP Value";
 case 229: return "MPEG4 Level";
 case 226: return "MPEG4 Profile";
 case 224: return "Quarter Pixel Search Enable";
 case 223: return "Maximum Bytes in a Slice";
 case 222: return "Number of MBs in a Slice";
 case 221: return "Slice Partitioning Method";
 case 210: return "VBV Buffer Size";
 case 339: return "Video Decoder PTS";
 case 340: return "Video Decoder Frame Count";
 case 211: return "Initial Delay for VBV Control";
 case 218: return "Horizontal MV Search Range";
 case 217: return "Vertical MV Search Range";
 case 213: return "Repeat Sequence Header";
 case 337: return "Force Key Frame";
 case 232: return "MPEG-2 Slice Parameters";
 case 233: return "MPEG-2 Quantization Matrices";
 case 335: return "FWHT Stateless Parameters";
 case 396: return "FWHT I-Frame QP Value";
 case 395: return "FWHT P-Frame QP Value";


 case 198: return "VPX Number of Partitions";
 case 202: return "VPX Intra Mode Decision Disable";
 case 197: return "VPX No. of Refs for P Frame";
 case 206: return "VPX Loop Filter Level Range";
 case 205: return "VPX Deblocking Effect Control";
 case 204: return "VPX Golden Frame Refresh Period";
 case 203: return "VPX Golden Frame Indicator";
 case 199: return "VPX Minimum QP Value";
 case 200: return "VPX Maximum QP Value";
 case 201: return "VPX I-Frame QP Value";
 case 196: return "VPX P-Frame QP Value";
 case 208: return "VP8 Profile";
 case 207: return "VP9 Profile";
 case 209: return "VP8 Frame Header";


 case 258: return "HEVC I-Frame QP Value";
 case 247: return "HEVC P-Frame QP Value";
 case 280: return "HEVC B-Frame QP Value";
 case 249: return "HEVC Minimum QP Value";
 case 250: return "HEVC Maximum QP Value";
 case 248: return "HEVC Profile";
 case 257: return "HEVC Level";
 case 241: return "HEVC Tier";
 case 278: return "HEVC Frame Rate Resolution";
 case 251: return "HEVC Maximum Coding Unit Depth";
 case 245: return "HEVC Refresh Type";
 case 279: return "HEVC Constant Intra Prediction";
 case 253: return "HEVC Lossless Encoding";
 case 239: return "HEVC Wavefront";
 case 254: return "HEVC Loop Filter";
 case 260: return "HEVC QP Values";
 case 261: return "HEVC Hierarchical Coding Type";
 case 262: return "HEVC Hierarchical Coding Layer";
 case 275: return "HEVC Hierarchical Layer 0 QP";
 case 273: return "HEVC Hierarchical Layer 1 QP";
 case 271: return "HEVC Hierarchical Layer 2 QP";
 case 269: return "HEVC Hierarchical Layer 3 QP";
 case 267: return "HEVC Hierarchical Layer 4 QP";
 case 265: return "HEVC Hierarchical Layer 5 QP";
 case 263: return "HEVC Hierarchical Layer 6 QP";
 case 276: return "HEVC Hierarchical Lay 0 BitRate";
 case 274: return "HEVC Hierarchical Lay 1 BitRate";
 case 272: return "HEVC Hierarchical Lay 2 BitRate";
 case 270: return "HEVC Hierarchical Lay 3 BitRate";
 case 268: return "HEVC Hierarchical Lay 4 BitRate";
 case 266: return "HEVC Hierarchical Lay 5 BitRate";
 case 264: return "HEVC Hierarchical Lay 6 BitRate";
 case 277: return "HEVC General PB";
 case 242: return "HEVC Temporal ID";
 case 243: return "HEVC Strong Intra Smoothing";
 case 259: return "HEVC Intra PU Split";
 case 240: return "HEVC TMV Prediction";
 case 252: return "HEVC Max Num of Candidate MVs";
 case 238: return "HEVC ENC Without Startcode";
 case 246: return "HEVC Num of I-Frame b/w 2 IDR";
 case 256: return "HEVC Loop Filter Beta Offset";
 case 255: return "HEVC Loop Filter TC Offset";
 case 244: return "HEVC Size of Length Field";
 case 214: return "Reference Frames for a P-Frame";
 case 216: return "Prepend SPS and PPS to IDR";



 case 444: return "Camera Controls";
 case 417: return "Auto Exposure";
 case 418: return "Exposure Time, Absolute";
 case 416: return "Exposure, Dynamic Framerate";
 case 194: return "Pan, Relative";
 case 142: return "Tilt, Relative";
 case 193: return "Pan, Reset";
 case 141: return "Tilt, Reset";
 case 195: return "Pan, Absolute";
 case 143: return "Tilt, Absolute";
 case 399: return "Focus, Absolute";
 case 397: return "Focus, Relative";
 case 398: return "Focus, Automatic Continuous";
 case 130: return "Zoom, Absolute";
 case 128: return "Zoom, Relative";
 case 129: return "Zoom, Continuous";
 case 186: return "Privacy";
 case 383: return "Iris, Absolute";
 case 382: return "Iris, Relative";
 case 457: return "Auto Exposure, Bias";
 case 452: return "White Balance, Auto & Preset";
 case 131: return "Wide Dynamic Range";
 case 384: return "Image Stabilization";
 case 381: return "ISO Sensitivity";
 case 380: return "ISO Sensitivity, Auto";
 case 415: return "Exposure, Metering Mode";
 case 150: return "Scene Mode";
 case 476: return "3A Lock";
 case 455: return "Auto Focus, Start";
 case 453: return "Auto Focus, Stop";
 case 454: return "Auto Focus, Status";
 case 456: return "Auto Focus, Range";
 case 192: return "Pan, Speed";
 case 140: return "Tilt, Speed";



 case 400: return "FM Radio Modulator Controls";
 case 174: return "RDS Signal Deviation";
 case 170: return "RDS Program ID";
 case 168: return "RDS Program Type";
 case 169: return "RDS PS Name";
 case 167: return "RDS Radio Text";
 case 172: return "RDS Stereo";
 case 176: return "RDS Artificial Head";
 case 175: return "RDS Compressed";
 case 173: return "RDS Dynamic PTY";
 case 166: return "RDS Traffic Announcement";
 case 165: return "RDS Traffic Program";
 case 171: return "RDS Music";
 case 177: return "RDS Enable Alt Frequencies";
 case 178: return "RDS Alternate Frequencies";
 case 465: return "Audio Limiter Feature Enabled";
 case 464: return "Audio Limiter Release Time";
 case 466: return "Audio Limiter Deviation";
 case 470: return "Audio Compression Enabled";
 case 469: return "Audio Compression Gain";
 case 467: return "Audio Compression Threshold";
 case 471: return "Audio Compression Attack Time";
 case 468: return "Audio Compression Release Time";
 case 190: return "Pilot Tone Feature Enabled";
 case 191: return "Pilot Tone Deviation";
 case 189: return "Pilot Tone Frequency";
 case 136: return "Pre-Emphasis";
 case 137: return "Tune Power Level";
 case 139: return "Tune Antenna Capacitor";



 case 413: return "Flash Controls";
 case 409: return "LED Mode";
 case 406: return "Strobe Source";
 case 407: return "Strobe";
 case 404: return "Stop Strobe";
 case 405: return "Strobe Status";
 case 403: return "Strobe Timeout";
 case 410: return "Intensity, Flash Mode";
 case 402: return "Intensity, Torch Mode";
 case 411: return "Intensity, Indicator";
 case 412: return "Faults";
 case 414: return "Charge";
 case 408: return "Ready to Strobe";



 case 377: return "JPEG Compression Controls";
 case 378: return "Chroma Subsampling";
 case 375: return "Restart Interval";
 case 376: return "Compression Quality";
 case 379: return "Active Markers";



 case 385: return "Image Source Controls";
 case 134: return "Vertical Blanking";
 case 392: return "Horizontal Blanking";
 case 474: return "Analogue Gain";
 case 144: return "Red Pixel Value";
 case 145: return "Green (Red) Pixel Value";
 case 147: return "Blue Pixel Value";
 case 146: return "Green (Blue) Pixel Value";



 case 386: return "Image Processing Controls";
 case 374: return "Link Frequency";
 case 188: return "Pixel Rate";
 case 148: return "Test Pattern";
 case 437: return "Deinterlacing Mode";
 case 431: return "Digital Gain";



 case 429: return "Digital Video Controls";
 case 424: return "Hotplug Present";
 case 420: return "RxSense Present";
 case 425: return "EDID Present";
 case 422: return "Transmit Mode";
 case 421: return "Tx RGB Quantization Range";
 case 423: return "Tx IT Content Type";
 case 427: return "Power Present";
 case 426: return "Rx RGB Quantization Range";
 case 428: return "Rx IT Content Type";

 case 401: return "FM Radio Receiver Controls";
 case 138: return "De-Emphasis";
 case 185: return "RDS Reception";
 case 161: return "RF Tuner Controls";
 case 153: return "RF Gain";
 case 157: return "LNA Gain, Auto";
 case 158: return "LNA Gain";
 case 155: return "Mixer Gain, Auto";
 case 156: return "Mixer Gain";
 case 159: return "IF Gain, Auto";
 case 160: return "IF Gain";
 case 162: return "Bandwidth, Auto";
 case 163: return "Bandwidth";
 case 154: return "PLL Lock";
 case 182: return "RDS Program Type";
 case 183: return "RDS PS Name";
 case 181: return "RDS Radio Text";
 case 180: return "RDS Traffic Announcement";
 case 179: return "RDS Traffic Program";
 case 184: return "RDS Music";



 case 436: return "Detection Controls";
 case 434: return "Motion Detection Mode";
 case 435: return "MD Global Threshold";
 case 432: return "MD Threshold Grid";
 case 433: return "MD Region Grid";
 default:
  return ((void*)0);
 }
}
