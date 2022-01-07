; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32, i32, i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_plane_pix_format* }
%struct.v4l2_plane_pix_format = type { i32, i64, i32 }
%struct.vivid_dev = type { i32*, i64, %struct.v4l2_rect, i64, i64, i32 }
%struct.vivid_fmt = type { i32, i32*, i32*, i32, i64, i64* }
%struct.v4l2_frmsize_discrete = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Fourcc format (0x%08x) unknown.\0A\00", align 1
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@webcam_sizes = common dso_local global i32 0, align 4
@VIVID_WEBCAM_SIZES = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@vivid_min_rect = common dso_local global %struct.v4l2_rect zeroinitializer, align 4
@vivid_max_rect = common dso_local global %struct.v4l2_rect zeroinitializer, align 4
@MAX_ZOOM = common dso_local global i32 0, align 4
@MAX_WIDTH = common dso_local global i32 0, align 4
@TGP_COLOR_ENC_HSV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %8 = alloca %struct.v4l2_plane_pix_format*, align 8
  %9 = alloca %struct.vivid_dev*, align 8
  %10 = alloca %struct.vivid_fmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.v4l2_frmsize_discrete*, align 8
  %18 = alloca %struct.v4l2_rect, align 4
  %19 = alloca %struct.v4l2_rect, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %22, %struct.v4l2_pix_format_mplane** %7, align 8
  %23 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %23, i32 0, i32 11
  %25 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %24, align 8
  store %struct.v4l2_plane_pix_format* %25, %struct.v4l2_plane_pix_format** %8, align 8
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = call %struct.vivid_dev* @video_drvdata(%struct.file* %26)
  store %struct.vivid_dev* %27, %struct.vivid_dev** %9, align 8
  store i32 1, i32* %13, align 4
  %28 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %29 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.vivid_fmt* @vivid_get_format(%struct.vivid_dev* %28, i32 %31)
  store %struct.vivid_fmt* %32, %struct.vivid_fmt** %10, align 8
  %33 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %34 = icmp ne %struct.vivid_fmt* %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %3
  %36 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %37 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dprintk(%struct.vivid_dev* %36, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 8
  %44 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %45 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.vivid_fmt* @vivid_get_format(%struct.vivid_dev* %44, i32 %47)
  store %struct.vivid_fmt* %48, %struct.vivid_fmt** %10, align 8
  br label %49

49:                                               ; preds = %35, %3
  %50 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %51 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vivid_field_cap(%struct.vivid_dev* %50, i32 %53)
  %55 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %58 = call i64 @vivid_is_webcam(%struct.vivid_dev* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %49
  %61 = load i32, i32* @webcam_sizes, align 4
  %62 = load i32, i32* @VIVID_WEBCAM_SIZES, align 4
  %63 = load i32, i32* @width, align 4
  %64 = load i32, i32* @height, align 4
  %65 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.v4l2_frmsize_discrete* @v4l2_find_nearest_size(i32 %61, i32 %62, i32 %63, i32 %64, i32 %67, i32 %70)
  store %struct.v4l2_frmsize_discrete* %71, %struct.v4l2_frmsize_discrete** %17, align 8
  %72 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %17, align 8
  %73 = getelementptr inbounds %struct.v4l2_frmsize_discrete, %struct.v4l2_frmsize_discrete* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %14, align 4
  %75 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %17, align 8
  %76 = getelementptr inbounds %struct.v4l2_frmsize_discrete, %struct.v4l2_frmsize_discrete* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %15, align 4
  br label %106

78:                                               ; preds = %49
  %79 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %80 = call i64 @vivid_is_sdtv_cap(%struct.vivid_dev* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  store i32 720, i32* %14, align 4
  %83 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %84 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %87 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @V4L2_STD_525_60, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 480, i32 576
  store i32 %95, i32* %15, align 4
  br label %105

96:                                               ; preds = %78
  %97 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %98 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %14, align 4
  %101 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %102 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %96, %82
  br label %106

106:                                              ; preds = %105, %60
  %107 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @V4L2_FIELD_HAS_T_OR_B(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 2, i32* %13, align 4
  br label %113

113:                                              ; preds = %112, %106
  %114 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %115 = call i64 @vivid_is_webcam(%struct.vivid_dev* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %113
  %118 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %119 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %141, label %122

122:                                              ; preds = %117
  %123 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %124 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %122
  %128 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %129 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %127, %113
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %13, align 4
  %138 = udiv i32 %136, %137
  %139 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %140 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %227

141:                                              ; preds = %127, %122, %117
  %142 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 0
  store i32 0, i32* %142, align 4
  %143 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 1
  store i32 0, i32* %143, align 4
  %144 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 2
  %145 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %146 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %144, align 4
  %148 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 3
  %149 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %150 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %13, align 4
  %153 = mul i32 %151, %152
  store i32 %153, i32* %148, align 4
  %154 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 4
  store i32 0, i32* %154, align 4
  %155 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 5
  store i32 0, i32* %155, align 4
  %156 = call i32 @v4l2_rect_set_min_size(%struct.v4l2_rect* %18, %struct.v4l2_rect* @vivid_min_rect)
  %157 = call i32 @v4l2_rect_set_max_size(%struct.v4l2_rect* %18, %struct.v4l2_rect* @vivid_max_rect)
  %158 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %159 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %141
  %163 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %164 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %181, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 0
  store i32 0, i32* %168, align 4
  %169 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 1
  store i32 0, i32* %169, align 4
  %170 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 2
  %171 = load i32, i32* @MAX_ZOOM, align 4
  %172 = load i32, i32* %14, align 4
  %173 = mul i32 %171, %172
  store i32 %173, i32* %170, align 4
  %174 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 3
  %175 = load i32, i32* @MAX_ZOOM, align 4
  %176 = load i32, i32* %15, align 4
  %177 = mul i32 %175, %176
  store i32 %177, i32* %174, align 4
  %178 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 4
  store i32 0, i32* %178, align 4
  %179 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 5
  store i32 0, i32* %179, align 4
  %180 = call i32 @v4l2_rect_set_max_size(%struct.v4l2_rect* %18, %struct.v4l2_rect* %19)
  br label %216

181:                                              ; preds = %162, %141
  %182 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %183 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %200, label %186

186:                                              ; preds = %181
  %187 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %188 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %186
  %192 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %193 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %191
  %197 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %198 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %197, i32 0, i32 2
  %199 = call i32 @v4l2_rect_set_max_size(%struct.v4l2_rect* %18, %struct.v4l2_rect* %198)
  br label %215

200:                                              ; preds = %191, %186, %181
  %201 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %202 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %200
  %206 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %207 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %205
  %211 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %212 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %211, i32 0, i32 2
  %213 = call i32 @v4l2_rect_set_min_size(%struct.v4l2_rect* %18, %struct.v4l2_rect* %212)
  br label %214

214:                                              ; preds = %210, %205, %200
  br label %215

215:                                              ; preds = %214, %196
  br label %216

216:                                              ; preds = %215, %167
  %217 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %220 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %13, align 4
  %224 = udiv i32 %222, %223
  %225 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %226 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  br label %227

227:                                              ; preds = %216, %132
  %228 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %229 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %232 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  store i32 0, i32* %16, align 4
  br label %233

233:                                              ; preds = %335, %227
  %234 = load i32, i32* %16, align 4
  %235 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %236 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp ult i32 %234, %237
  br i1 %238, label %239, label %338

239:                                              ; preds = %233
  %240 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %241 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %244 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = mul i32 %242, %249
  %251 = lshr i32 %250, 3
  store i32 %251, i32* %11, align 4
  %252 = load i32, i32* @MAX_ZOOM, align 4
  %253 = load i32, i32* @MAX_WIDTH, align 4
  %254 = mul i32 %252, %253
  %255 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %256 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %16, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = mul i32 %254, %261
  %263 = lshr i32 %262, 3
  store i32 %263, i32* %12, align 4
  %264 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %265 = load i32, i32* %16, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %264, i64 %266
  %268 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = icmp ugt i32 %269, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %239
  %273 = load i32, i32* %12, align 4
  %274 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %275 = load i32, i32* %16, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %274, i64 %276
  %278 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %277, i32 0, i32 0
  store i32 %273, i32* %278, align 8
  br label %279

279:                                              ; preds = %272, %239
  %280 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %281 = load i32, i32* %16, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %280, i64 %282
  %284 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = icmp ult i32 %285, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %279
  %289 = load i32, i32* %11, align 4
  %290 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %291 = load i32, i32* %16, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %290, i64 %292
  %294 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %293, i32 0, i32 0
  store i32 %289, i32* %294, align 8
  br label %295

295:                                              ; preds = %288, %279
  %296 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %297 = load i32, i32* %16, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %296, i64 %298
  %300 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %303 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = mul i32 %301, %304
  %306 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %307 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %306, i32 0, i32 2
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %16, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = udiv i32 %305, %312
  %314 = zext i32 %313 to i64
  %315 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %316 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %315, i32 0, i32 5
  %317 = load i64*, i64** %316, align 8
  %318 = load i32, i32* %16, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds i64, i64* %317, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = add nsw i64 %314, %321
  %323 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %324 = load i32, i32* %16, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %323, i64 %325
  %327 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %326, i32 0, i32 1
  store i64 %322, i64* %327, align 8
  %328 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %329 = load i32, i32* %16, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %328, i64 %330
  %332 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @memset(i32 %333, i32 0, i32 4)
  br label %335

335:                                              ; preds = %295
  %336 = load i32, i32* %16, align 4
  %337 = add i32 %336, 1
  store i32 %337, i32* %16, align 4
  br label %233

338:                                              ; preds = %233
  %339 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %340 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  store i32 %341, i32* %16, align 4
  br label %342

342:                                              ; preds = %391, %338
  %343 = load i32, i32* %16, align 4
  %344 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %345 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 8
  %347 = icmp ult i32 %343, %346
  br i1 %347, label %348, label %394

348:                                              ; preds = %342
  %349 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %350 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %349, i64 0
  %351 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %354 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = mul i32 %352, %355
  %357 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %358 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %16, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %365 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %364, i32 0, i32 2
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %16, align 4
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = sdiv i32 %363, %370
  %372 = mul i32 %356, %371
  %373 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %374 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %373, i32 0, i32 1
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 0
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %379 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %378, i32 0, i32 2
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 0
  %382 = load i32, i32* %381, align 4
  %383 = sdiv i32 %377, %382
  %384 = udiv i32 %372, %383
  %385 = zext i32 %384 to i64
  %386 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %387 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %386, i64 0
  %388 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %389, %385
  store i64 %390, i64* %388, align 8
  br label %391

391:                                              ; preds = %348
  %392 = load i32, i32* %16, align 4
  %393 = add i32 %392, 1
  store i32 %393, i32* %16, align 4
  br label %342

394:                                              ; preds = %342
  %395 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %396 = call i32 @vivid_colorspace_cap(%struct.vivid_dev* %395)
  %397 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %398 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %397, i32 0, i32 8
  store i32 %396, i32* %398, align 8
  %399 = load %struct.vivid_fmt*, %struct.vivid_fmt** %10, align 8
  %400 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %399, i32 0, i32 4
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @TGP_COLOR_ENC_HSV, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %404, label %409

404:                                              ; preds = %394
  %405 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %406 = call i32 @vivid_hsv_enc_cap(%struct.vivid_dev* %405)
  %407 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %408 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %407, i32 0, i32 7
  store i32 %406, i32* %408, align 4
  br label %414

409:                                              ; preds = %394
  %410 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %411 = call i32 @vivid_ycbcr_enc_cap(%struct.vivid_dev* %410)
  %412 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %413 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %412, i32 0, i32 6
  store i32 %411, i32* %413, align 8
  br label %414

414:                                              ; preds = %409, %404
  %415 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %416 = call i32 @vivid_xfer_func_cap(%struct.vivid_dev* %415)
  %417 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %418 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %417, i32 0, i32 5
  store i32 %416, i32* %418, align 4
  %419 = load %struct.vivid_dev*, %struct.vivid_dev** %9, align 8
  %420 = call i32 @vivid_quantization_cap(%struct.vivid_dev* %419)
  %421 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %422 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %421, i32 0, i32 4
  store i32 %420, i32* %422, align 8
  %423 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %424 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @memset(i32 %425, i32 0, i32 4)
  ret i32 0
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.vivid_fmt* @vivid_get_format(%struct.vivid_dev*, i32) #1

declare dso_local i32 @dprintk(%struct.vivid_dev*, i32, i8*, i32) #1

declare dso_local i32 @vivid_field_cap(%struct.vivid_dev*, i32) #1

declare dso_local i64 @vivid_is_webcam(%struct.vivid_dev*) #1

declare dso_local %struct.v4l2_frmsize_discrete* @v4l2_find_nearest_size(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

declare dso_local i64 @V4L2_FIELD_HAS_T_OR_B(i32) #1

declare dso_local i32 @v4l2_rect_set_min_size(%struct.v4l2_rect*, %struct.v4l2_rect*) #1

declare dso_local i32 @v4l2_rect_set_max_size(%struct.v4l2_rect*, %struct.v4l2_rect*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @vivid_colorspace_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_hsv_enc_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_ycbcr_enc_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_xfer_func_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_quantization_cap(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
