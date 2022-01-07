; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_try_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_try_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32, i32, i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.v4l2_plane_pix_format* }
%struct.v4l2_plane_pix_format = type { i32, i64, i32 }
%struct.vivid_dev = type { i32, i64, %struct.v4l2_rect, i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i32, i32, i32 }
%struct.vivid_fmt = type { i32, i32*, i32*, i32, i64* }

@.str = private unnamed_addr constant [33 x i8] c"Fourcc format (0x%08x) unknown.\0A\00", align 1
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@vivid_min_rect = common dso_local global %struct.v4l2_rect zeroinitializer, align 4
@vivid_max_rect = common dso_local global %struct.v4l2_rect zeroinitializer, align 4
@MAX_ZOOM = common dso_local global i32 0, align 4
@MAX_WIDTH = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i64 0, align 8
@V4L2_DV_FL_IS_CE_VIDEO = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i64 0, align 8
@V4L2_QUANTIZATION_LIM_RANGE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_OPRGB = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_BT2020 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_try_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.vivid_dev*, align 8
  %8 = alloca %struct.v4l2_bt_timings*, align 8
  %9 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %10 = alloca %struct.v4l2_plane_pix_format*, align 8
  %11 = alloca %struct.vivid_fmt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.v4l2_rect, align 4
  %19 = alloca %struct.v4l2_rect, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = call %struct.vivid_dev* @video_drvdata(%struct.file* %20)
  store %struct.vivid_dev* %21, %struct.vivid_dev** %7, align 8
  %22 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %23 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.v4l2_bt_timings* %24, %struct.v4l2_bt_timings** %8, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %27, %struct.v4l2_pix_format_mplane** %9, align 8
  %28 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %28, i32 0, i32 10
  %30 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %29, align 8
  store %struct.v4l2_plane_pix_format* %30, %struct.v4l2_plane_pix_format** %10, align 8
  store i32 1, i32* %14, align 4
  %31 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %32 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.vivid_fmt* @vivid_get_format(%struct.vivid_dev* %31, i32 %34)
  store %struct.vivid_fmt* %35, %struct.vivid_fmt** %11, align 8
  %36 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %37 = icmp ne %struct.vivid_fmt* %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %3
  %39 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %40 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dprintk(%struct.vivid_dev* %39, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %45 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 4
  %47 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %48 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %49 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.vivid_fmt* @vivid_get_format(%struct.vivid_dev* %47, i32 %50)
  store %struct.vivid_fmt* %51, %struct.vivid_fmt** %11, align 8
  br label %52

52:                                               ; preds = %38, %3
  %53 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %54 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @vivid_field_out(%struct.vivid_dev* %53, i32 %56)
  %58 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %61 = call i64 @vivid_is_svid_out(%struct.vivid_dev* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %52
  store i32 720, i32* %15, align 4
  %64 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %65 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @V4L2_STD_525_60, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 480, i32 576
  store i32 %71, i32* %16, align 4
  br label %81

72:                                               ; preds = %52
  %73 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %74 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %15, align 4
  %77 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %78 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %72, %63
  %82 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %83 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @V4L2_FIELD_HAS_T_OR_B(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 2, i32* %14, align 4
  br label %88

88:                                               ; preds = %87, %81
  %89 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %90 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %88
  %94 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %95 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %93
  %99 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %100 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %106 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %14, align 4
  %109 = udiv i32 %107, %108
  %110 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %198

112:                                              ; preds = %98, %93, %88
  %113 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 0
  store i32 0, i32* %113, align 4
  %114 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 2
  %116 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %117 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %115, align 4
  %119 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 3
  %120 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %121 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %14, align 4
  %124 = mul i32 %122, %123
  store i32 %124, i32* %119, align 4
  %125 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 4
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 5
  store i32 0, i32* %126, align 4
  %127 = call i32 @v4l2_rect_set_min_size(%struct.v4l2_rect* %18, %struct.v4l2_rect* @vivid_min_rect)
  %128 = call i32 @v4l2_rect_set_max_size(%struct.v4l2_rect* %18, %struct.v4l2_rect* @vivid_max_rect)
  %129 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %130 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %112
  %134 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %135 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %152, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 0
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 1
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 2
  %142 = load i32, i32* @MAX_ZOOM, align 4
  %143 = load i32, i32* %15, align 4
  %144 = mul i32 %142, %143
  store i32 %144, i32* %141, align 4
  %145 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 3
  %146 = load i32, i32* @MAX_ZOOM, align 4
  %147 = load i32, i32* %16, align 4
  %148 = mul i32 %146, %147
  store i32 %148, i32* %145, align 4
  %149 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 4
  store i32 0, i32* %149, align 4
  %150 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 5
  store i32 0, i32* %150, align 4
  %151 = call i32 @v4l2_rect_set_max_size(%struct.v4l2_rect* %18, %struct.v4l2_rect* %19)
  br label %187

152:                                              ; preds = %133, %112
  %153 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %154 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %152
  %158 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %159 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %164 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %162
  %168 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %169 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %168, i32 0, i32 2
  %170 = call i32 @v4l2_rect_set_max_size(%struct.v4l2_rect* %18, %struct.v4l2_rect* %169)
  br label %186

171:                                              ; preds = %162, %157, %152
  %172 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %173 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %171
  %177 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %178 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %183 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %182, i32 0, i32 2
  %184 = call i32 @v4l2_rect_set_min_size(%struct.v4l2_rect* %18, %struct.v4l2_rect* %183)
  br label %185

185:                                              ; preds = %181, %176, %171
  br label %186

186:                                              ; preds = %185, %167
  br label %187

187:                                              ; preds = %186, %138
  %188 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %191 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %14, align 4
  %195 = udiv i32 %193, %194
  %196 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %197 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %187, %103
  %199 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %200 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %203 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  store i32 0, i32* %17, align 4
  br label %204

204:                                              ; preds = %306, %198
  %205 = load i32, i32* %17, align 4
  %206 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %207 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ult i32 %205, %208
  br i1 %209, label %210, label %309

210:                                              ; preds = %204
  %211 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %212 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %215 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %17, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = mul i32 %213, %220
  %222 = lshr i32 %221, 3
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* @MAX_ZOOM, align 4
  %224 = load i32, i32* @MAX_WIDTH, align 4
  %225 = mul i32 %223, %224
  %226 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %227 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %17, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = mul i32 %225, %232
  %234 = lshr i32 %233, 3
  store i32 %234, i32* %13, align 4
  %235 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %10, align 8
  %236 = load i32, i32* %17, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %235, i64 %237
  %239 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = icmp ugt i32 %240, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %210
  %244 = load i32, i32* %13, align 4
  %245 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %10, align 8
  %246 = load i32, i32* %17, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %245, i64 %247
  %249 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %248, i32 0, i32 0
  store i32 %244, i32* %249, align 8
  br label %250

250:                                              ; preds = %243, %210
  %251 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %10, align 8
  %252 = load i32, i32* %17, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %251, i64 %253
  %255 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %12, align 4
  %258 = icmp ult i32 %256, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %250
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %10, align 8
  %262 = load i32, i32* %17, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %261, i64 %263
  %265 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %264, i32 0, i32 0
  store i32 %260, i32* %265, align 8
  br label %266

266:                                              ; preds = %259, %250
  %267 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %10, align 8
  %268 = load i32, i32* %17, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %267, i64 %269
  %271 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %274 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = mul i32 %272, %275
  %277 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %278 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %17, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = udiv i32 %276, %283
  %285 = zext i32 %284 to i64
  %286 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %287 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %286, i32 0, i32 4
  %288 = load i64*, i64** %287, align 8
  %289 = load i32, i32* %17, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = add nsw i64 %285, %292
  %294 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %10, align 8
  %295 = load i32, i32* %17, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %294, i64 %296
  %298 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %297, i32 0, i32 1
  store i64 %293, i64* %298, align 8
  %299 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %10, align 8
  %300 = load i32, i32* %17, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %299, i64 %301
  %303 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @memset(i32 %304, i32 0, i32 4)
  br label %306

306:                                              ; preds = %266
  %307 = load i32, i32* %17, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %17, align 4
  br label %204

309:                                              ; preds = %204
  %310 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %311 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  store i32 %312, i32* %17, align 4
  br label %313

313:                                              ; preds = %362, %309
  %314 = load i32, i32* %17, align 4
  %315 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %316 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = icmp ult i32 %314, %317
  br i1 %318, label %319, label %365

319:                                              ; preds = %313
  %320 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %10, align 8
  %321 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %320, i64 0
  %322 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %325 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = mul i32 %323, %326
  %328 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %329 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %17, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %336 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %17, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = sdiv i32 %334, %341
  %343 = mul i32 %327, %342
  %344 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %345 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 0
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.vivid_fmt*, %struct.vivid_fmt** %11, align 8
  %350 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 0
  %353 = load i32, i32* %352, align 4
  %354 = sdiv i32 %348, %353
  %355 = udiv i32 %343, %354
  %356 = zext i32 %355 to i64
  %357 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %10, align 8
  %358 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %357, i64 0
  %359 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = add nsw i64 %360, %356
  store i64 %361, i64* %359, align 8
  br label %362

362:                                              ; preds = %319
  %363 = load i32, i32* %17, align 4
  %364 = add i32 %363, 1
  store i32 %364, i32* %17, align 4
  br label %313

365:                                              ; preds = %313
  %366 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %367 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %368 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %367, i32 0, i32 7
  store i32 %366, i32* %368, align 4
  %369 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %370 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %371 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %370, i32 0, i32 6
  store i32 %369, i32* %371, align 8
  %372 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %373 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %374 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %373, i32 0, i32 5
  store i32 %372, i32* %374, align 4
  %375 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %376 = call i64 @vivid_is_svid_out(%struct.vivid_dev* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %365
  %379 = load i64, i64* @V4L2_COLORSPACE_SMPTE170M, align 8
  %380 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %381 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %380, i32 0, i32 3
  store i64 %379, i64* %381, align 8
  br label %458

382:                                              ; preds = %365
  %383 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %384 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %394, label %387

387:                                              ; preds = %382
  %388 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %389 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @V4L2_DV_FL_IS_CE_VIDEO, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %407, label %394

394:                                              ; preds = %387, %382
  %395 = load i64, i64* @V4L2_COLORSPACE_SRGB, align 8
  %396 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %397 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %396, i32 0, i32 3
  store i64 %395, i64* %397, align 8
  %398 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %399 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %394
  %403 = load i32, i32* @V4L2_QUANTIZATION_LIM_RANGE, align 4
  %404 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %405 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %404, i32 0, i32 5
  store i32 %403, i32* %405, align 4
  br label %406

406:                                              ; preds = %402, %394
  br label %457

407:                                              ; preds = %387
  %408 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %409 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = icmp eq i32 %410, 720
  br i1 %411, label %412, label %421

412:                                              ; preds = %407
  %413 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %414 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = icmp sle i32 %415, 576
  br i1 %416, label %417, label %421

417:                                              ; preds = %412
  %418 = load i64, i64* @V4L2_COLORSPACE_SMPTE170M, align 8
  %419 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %420 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %419, i32 0, i32 3
  store i64 %418, i64* %420, align 8
  br label %456

421:                                              ; preds = %412, %407
  %422 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %423 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %422, i32 0, i32 3
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @V4L2_COLORSPACE_SMPTE170M, align 8
  %426 = icmp ne i64 %424, %425
  br i1 %426, label %427, label %455

427:                                              ; preds = %421
  %428 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %429 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %428, i32 0, i32 3
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @V4L2_COLORSPACE_REC709, align 8
  %432 = icmp ne i64 %430, %431
  br i1 %432, label %433, label %455

433:                                              ; preds = %427
  %434 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %435 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %434, i32 0, i32 3
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @V4L2_COLORSPACE_OPRGB, align 8
  %438 = icmp ne i64 %436, %437
  br i1 %438, label %439, label %455

439:                                              ; preds = %433
  %440 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %441 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %440, i32 0, i32 3
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @V4L2_COLORSPACE_BT2020, align 8
  %444 = icmp ne i64 %442, %443
  br i1 %444, label %445, label %455

445:                                              ; preds = %439
  %446 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %447 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %446, i32 0, i32 3
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @V4L2_COLORSPACE_SRGB, align 8
  %450 = icmp ne i64 %448, %449
  br i1 %450, label %451, label %455

451:                                              ; preds = %445
  %452 = load i64, i64* @V4L2_COLORSPACE_REC709, align 8
  %453 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %454 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %453, i32 0, i32 3
  store i64 %452, i64* %454, align 8
  br label %455

455:                                              ; preds = %451, %445, %439, %433, %427, %421
  br label %456

456:                                              ; preds = %455, %417
  br label %457

457:                                              ; preds = %456, %406
  br label %458

458:                                              ; preds = %457, %378
  %459 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %460 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %459, i32 0, i32 4
  %461 = load i32, i32* %460, align 8
  %462 = call i32 @memset(i32 %461, i32 0, i32 4)
  ret i32 0
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.vivid_fmt* @vivid_get_format(%struct.vivid_dev*, i32) #1

declare dso_local i32 @dprintk(%struct.vivid_dev*, i32, i8*, i32) #1

declare dso_local i32 @vivid_field_out(%struct.vivid_dev*, i32) #1

declare dso_local i64 @vivid_is_svid_out(%struct.vivid_dev*) #1

declare dso_local i64 @V4L2_FIELD_HAS_T_OR_B(i32) #1

declare dso_local i32 @v4l2_rect_set_min_size(%struct.v4l2_rect*, %struct.v4l2_rect*) #1

declare dso_local i32 @v4l2_rect_set_max_size(%struct.v4l2_rect*, %struct.v4l2_rect*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
