; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_update_std_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_update_std_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpif_channel_config_params = type { i32, i64, i32, i32, i32, i64, i32 }
%struct.channel_obj = type { %struct.vpif_params, %struct.video_obj, %struct.common_obj* }
%struct.vpif_params = type { %struct.TYPE_8__, %struct.vpif_channel_config_params, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.video_obj = type { i32, i32 }
%struct.common_obj = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i64, i64, i32, i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vpif_update_std_info\0A\00", align 1
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@VPIF_IF_BT656 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_SGRBG10 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i64 0, align 8
@VPIF_IF_RAW_BAYER = common dso_local global i64 0, align 8
@vpif_ch_params_count = common dso_local global i32 0, align 4
@vpif_ch_params = common dso_local global %struct.vpif_channel_config_params* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"SD format\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"HD format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV16 = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_obj*)* @vpif_update_std_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_update_std_info(%struct.channel_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.channel_obj*, align 8
  %4 = alloca %struct.common_obj*, align 8
  %5 = alloca %struct.vpif_params*, align 8
  %6 = alloca %struct.vpif_channel_config_params*, align 8
  %7 = alloca %struct.vpif_channel_config_params*, align 8
  %8 = alloca %struct.video_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.channel_obj* %0, %struct.channel_obj** %3, align 8
  %11 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %12 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %11, i32 0, i32 2
  %13 = load %struct.common_obj*, %struct.common_obj** %12, align 8
  %14 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %15 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %13, i64 %14
  store %struct.common_obj* %15, %struct.common_obj** %4, align 8
  %16 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %17 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %16, i32 0, i32 0
  store %struct.vpif_params* %17, %struct.vpif_params** %5, align 8
  %18 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %19 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %18, i32 0, i32 1
  store %struct.vpif_channel_config_params* %19, %struct.vpif_channel_config_params** %7, align 8
  %20 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %21 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %20, i32 0, i32 1
  store %struct.video_obj* %21, %struct.video_obj** %8, align 8
  %22 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %23 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store %struct.v4l2_pix_format* %25, %struct.v4l2_pix_format** %10, align 8
  %26 = load i32, i32* @debug, align 4
  %27 = call i32 @vpif_dbg(i32 2, i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %98

32:                                               ; preds = %1
  %33 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %98

37:                                               ; preds = %32
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43, %37
  %50 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i64, i64* @VPIF_IF_BT656, align 8
  %55 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %56 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @V4L2_PIX_FMT_SGRBG10, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %53
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @V4L2_PIX_FMT_SBGGR8, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63, %53
  %70 = load i64, i64* @VPIF_IF_RAW_BAYER, align 8
  %71 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %72 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %63
  %75 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @V4L2_PIX_FMT_SGRBG10, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %82 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %74
  %85 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %86 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VPIF_IF_RAW_BAYER, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %93 = call i32 @memset(%struct.vpif_channel_config_params* %92, i32 0, i32 48)
  %94 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %95 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  store i32 0, i32* %2, align 4
  br label %279

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %32, %1
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %143, %98
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @vpif_ch_params_count, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %146

103:                                              ; preds = %99
  %104 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** @vpif_ch_params, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %104, i64 %106
  store %struct.vpif_channel_config_params* %107, %struct.vpif_channel_config_params** %6, align 8
  %108 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %6, align 8
  %109 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %103
  %113 = load i32, i32* @debug, align 4
  %114 = call i32 @vpif_dbg(i32 2, i32 %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %6, align 8
  %116 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.video_obj*, %struct.video_obj** %8, align 8
  %119 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %112
  %124 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %125 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %6, align 8
  %126 = call i32 @memcpy(%struct.vpif_channel_config_params* %124, %struct.vpif_channel_config_params* %125, i32 48)
  br label %146

127:                                              ; preds = %112
  br label %142

128:                                              ; preds = %103
  %129 = load i32, i32* @debug, align 4
  %130 = call i32 @vpif_dbg(i32 2, i32 %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %131 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %6, align 8
  %132 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %131, i32 0, i32 6
  %133 = load %struct.video_obj*, %struct.video_obj** %8, align 8
  %134 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %133, i32 0, i32 1
  %135 = call i32 @memcmp(i32* %132, i32* %134, i32 4)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %128
  %138 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %139 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %6, align 8
  %140 = call i32 @memcpy(%struct.vpif_channel_config_params* %138, %struct.vpif_channel_config_params* %139, i32 48)
  br label %146

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %127
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %99

146:                                              ; preds = %137, %123, %99
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @vpif_ch_params_count, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %279

153:                                              ; preds = %146
  %154 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %155 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %158 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %160, i32 0, i32 0
  store i32 %156, i32* %161, align 8
  %162 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %163 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %166 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %168 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %171 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %173, i32 0, i32 1
  store i32 %169, i32* %174, align 4
  %175 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %176 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %179 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %181 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %184 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 %182, %185
  %187 = mul nsw i32 %186, 2
  %188 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %189 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %191, i32 0, i32 4
  store i32 %187, i32* %192, align 8
  %193 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %194 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %197 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %199, i32 0, i32 5
  store i32 %195, i32* %200, align 4
  %201 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %202 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %205 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 8
  %207 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %208 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %207, i32 0, i32 5
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.vpif_params*, %struct.vpif_params** %5, align 8
  %211 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  store i64 %209, i64* %212, align 8
  %213 = load %struct.video_obj*, %struct.video_obj** %8, align 8
  %214 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %153
  %218 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %219 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %220 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %222, i32 0, i32 6
  store i32 %218, i32* %223, align 8
  br label %231

224:                                              ; preds = %153
  %225 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %226 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %227 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %229, i32 0, i32 6
  store i32 %225, i32* %230, align 8
  br label %231

231:                                              ; preds = %224, %217
  %232 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %233 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %231
  %239 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %240 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %241 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %243, i32 0, i32 2
  store i64 %239, i64* %244, align 8
  br label %252

245:                                              ; preds = %231
  %246 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %247 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %248 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %250, i32 0, i32 2
  store i64 %246, i64* %251, align 8
  br label %252

252:                                              ; preds = %245, %238
  %253 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %254 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @VPIF_IF_RAW_BAYER, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %267

260:                                              ; preds = %252
  %261 = load i64, i64* @V4L2_PIX_FMT_SBGGR8, align 8
  %262 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %263 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %265, i32 0, i32 3
  store i64 %261, i64* %266, align 8
  br label %274

267:                                              ; preds = %252
  %268 = load i64, i64* @V4L2_PIX_FMT_NV16, align 8
  %269 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %270 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %272, i32 0, i32 3
  store i64 %268, i64* %273, align 8
  br label %274

274:                                              ; preds = %267, %260
  %275 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %276 = load %struct.common_obj*, %struct.common_obj** %4, align 8
  %277 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  store i32 %275, i32* %278, align 8
  store i32 0, i32* %2, align 4
  br label %279

279:                                              ; preds = %274, %150, %91
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.vpif_channel_config_params*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.vpif_channel_config_params*, %struct.vpif_channel_config_params*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
