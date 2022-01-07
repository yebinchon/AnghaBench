; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_try_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_try_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i32, %struct.gsc_dev* }
%struct.gsc_dev = type { %struct.gsc_variant* }
%struct.gsc_variant = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i64, i32, %struct.v4l2_plane_pix_format*, i32, i32 }
%struct.v4l2_plane_pix_format = type { i32, i32 }
%struct.gsc_fmt = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"user put w: %d, h: %d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"pixelformat format (0x%X) invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Not supported field order(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"mod_x: %d, mod_y: %d, max_w: %d, max_h = %d\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Image size has been modified from %dx%d to %dx%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"[%d]: bpl: %d, sizeimage: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsc_try_fmt_mplane(%struct.gsc_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsc_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.gsc_dev*, align 8
  %7 = alloca %struct.gsc_variant*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.gsc_fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.v4l2_plane_pix_format*, align 8
  %20 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %21 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %21, i32 0, i32 1
  %23 = load %struct.gsc_dev*, %struct.gsc_dev** %22, align 8
  store %struct.gsc_dev* %23, %struct.gsc_dev** %6, align 8
  %24 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %25 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %24, i32 0, i32 0
  %26 = load %struct.gsc_variant*, %struct.gsc_variant** %25, align 8
  store %struct.gsc_variant* %26, %struct.gsc_variant** %7, align 8
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %29, %struct.v4l2_pix_format_mplane** %8, align 8
  %30 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %37, i32 0, i32 6
  %39 = call %struct.gsc_fmt* @find_fmt(i32* %38, i32* null, i32 0)
  store %struct.gsc_fmt* %39, %struct.gsc_fmt** %9, align 8
  %40 = load %struct.gsc_fmt*, %struct.gsc_fmt** %9, align 8
  %41 = icmp ne %struct.gsc_fmt* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %2
  %43 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %329

49:                                               ; preds = %2
  %50 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %57 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %74

59:                                               ; preds = %49
  %60 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %329

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %55
  %75 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %76 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  %80 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %81 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %11, align 4
  %85 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %86 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ffs(i32 %89)
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  %92 = load %struct.gsc_fmt*, %struct.gsc_fmt** %9, align 8
  %93 = getelementptr inbounds %struct.gsc_fmt, %struct.gsc_fmt* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @is_yuv420(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %74
  %98 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %99 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ffs(i32 %102)
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %113

105:                                              ; preds = %74
  %106 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %107 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ffs(i32 %110)
  %112 = sub nsw i32 %111, 2
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %105, %97
  %114 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %121 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %14, align 4
  %125 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %126 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %15, align 4
  br label %146

130:                                              ; preds = %113
  %131 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %132 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %14, align 4
  %136 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %137 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %15, align 4
  %141 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %142 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %145 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %130, %119
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %153 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %16, align 4
  %155 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %156 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %17, align 4
  %158 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %159 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %158, i32 0, i32 0
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %164 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %163, i32 0, i32 1
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @v4l_bound_align_image(i32* %159, i32 %160, i32 %161, i32 %162, i32* %164, i32 %165, i32 %166, i32 %167, i32 0)
  %169 = load i32, i32* %16, align 4
  %170 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %171 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %169, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %146
  %175 = load i32, i32* %17, align 4
  %176 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %177 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %175, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %174, %146
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %17, align 4
  %183 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %184 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %187 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %181, i32 %182, i32 %185, i32 %188)
  br label %190

190:                                              ; preds = %180, %174
  %191 = load %struct.gsc_fmt*, %struct.gsc_fmt** %9, align 8
  %192 = getelementptr inbounds %struct.gsc_fmt, %struct.gsc_fmt* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %195 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 8
  %196 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %197 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %190
  %202 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %203 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %206 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %201, %190
  store i32 0, i32* %18, align 4
  br label %208

208:                                              ; preds = %325, %207
  %209 = load i32, i32* %18, align 4
  %210 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %211 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %328

214:                                              ; preds = %208
  %215 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %216 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %215, i32 0, i32 4
  %217 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %216, align 8
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %217, i64 %219
  store %struct.v4l2_plane_pix_format* %220, %struct.v4l2_plane_pix_format** %19, align 8
  %221 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %19, align 8
  %222 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %20, align 4
  %224 = load %struct.gsc_fmt*, %struct.gsc_fmt** %9, align 8
  %225 = getelementptr inbounds %struct.gsc_fmt, %struct.gsc_fmt* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %259

228:                                              ; preds = %214
  %229 = load i32, i32* %20, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %246, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %20, align 4
  %233 = mul nsw i32 %232, 8
  %234 = load %struct.gsc_fmt*, %struct.gsc_fmt** %9, align 8
  %235 = getelementptr inbounds %struct.gsc_fmt, %struct.gsc_fmt* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %18, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = sdiv i32 %233, %240
  %242 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %243 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %259

246:                                              ; preds = %231, %228
  %247 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %248 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.gsc_fmt*, %struct.gsc_fmt** %9, align 8
  %251 = getelementptr inbounds %struct.gsc_fmt, %struct.gsc_fmt* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = mul nsw i32 %249, %256
  %258 = sdiv i32 %257, 8
  store i32 %258, i32* %20, align 4
  br label %259

259:                                              ; preds = %246, %231, %214
  %260 = load %struct.gsc_fmt*, %struct.gsc_fmt** %9, align 8
  %261 = getelementptr inbounds %struct.gsc_fmt, %struct.gsc_fmt* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp sgt i32 %262, 1
  br i1 %263, label %264, label %277

264:                                              ; preds = %259
  %265 = load i32, i32* %20, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %264
  %268 = load i32, i32* %20, align 4
  %269 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %270 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %267, %264
  %274 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %275 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  store i32 %276, i32* %20, align 4
  br label %277

277:                                              ; preds = %273, %267, %259
  %278 = load i32, i32* %18, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %277
  %281 = load %struct.gsc_fmt*, %struct.gsc_fmt** %9, align 8
  %282 = getelementptr inbounds %struct.gsc_fmt, %struct.gsc_fmt* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 3
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load i32, i32* %20, align 4
  %287 = sdiv i32 %286, 2
  store i32 %287, i32* %20, align 4
  br label %288

288:                                              ; preds = %285, %280, %277
  %289 = load i32, i32* %20, align 4
  %290 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %19, align 8
  %291 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 4
  %292 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %293 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %296 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = mul nsw i32 %294, %297
  %299 = load %struct.gsc_fmt*, %struct.gsc_fmt** %9, align 8
  %300 = getelementptr inbounds %struct.gsc_fmt, %struct.gsc_fmt* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %18, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = mul nsw i32 %298, %305
  %307 = sdiv i32 %306, 8
  %308 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %19, align 8
  %309 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @max(i32 %307, i32 %310)
  %312 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %19, align 8
  %313 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 4
  %314 = load i32, i32* %18, align 4
  %315 = load i32, i32* %20, align 4
  %316 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %317 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %316, i32 0, i32 4
  %318 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %317, align 8
  %319 = load i32, i32* %18, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %318, i64 %320
  %322 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %314, i32 %315, i32 %323)
  br label %325

325:                                              ; preds = %288
  %326 = load i32, i32* %18, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %18, align 4
  br label %208

328:                                              ; preds = %208
  store i32 0, i32* %3, align 4
  br label %329

329:                                              ; preds = %328, %65, %42
  %330 = load i32, i32* %3, align 4
  ret i32 %330
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local %struct.gsc_fmt* @find_fmt(i32*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @is_yuv420(i32) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
