; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c___camif_video_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c___camif_video_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i64, %struct.camif_dev* }
%struct.camif_dev = type { %struct.TYPE_2__*, %struct.v4l2_rect }
%struct.TYPE_2__ = type { %struct.vp_pix_limits* }
%struct.vp_pix_limits = type { i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.camif_fmt = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"fmt: %ux%u, crop: %ux%u, bytesperline: %u\0A\00", align 1
@SCALER_MAX_RATIO = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%ux%u, wmin: %d, hmin: %d, sc_hrmax: %d, sc_vrmax: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camif_vp*, %struct.v4l2_pix_format*, %struct.camif_fmt**)* @__camif_video_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__camif_video_try_format(%struct.camif_vp* %0, %struct.v4l2_pix_format* %1, %struct.camif_fmt** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.camif_vp*, align 8
  %6 = alloca %struct.v4l2_pix_format*, align 8
  %7 = alloca %struct.camif_fmt**, align 8
  %8 = alloca %struct.camif_dev*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vp_pix_limits*, align 8
  %15 = alloca %struct.camif_fmt*, align 8
  store %struct.camif_vp* %0, %struct.camif_vp** %5, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %6, align 8
  store %struct.camif_fmt** %2, %struct.camif_fmt*** %7, align 8
  %16 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %17 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %16, i32 0, i32 1
  %18 = load %struct.camif_dev*, %struct.camif_dev** %17, align 8
  store %struct.camif_dev* %18, %struct.camif_dev** %8, align 8
  %19 = load %struct.camif_dev*, %struct.camif_dev** %8, align 8
  %20 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %19, i32 0, i32 1
  store %struct.v4l2_rect* %20, %struct.v4l2_rect** %9, align 8
  %21 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 6
  %24 = call %struct.camif_fmt* @s3c_camif_find_format(%struct.camif_vp* %21, i32* %23, i32 0)
  store %struct.camif_fmt* %24, %struct.camif_fmt** %15, align 8
  %25 = load %struct.camif_fmt*, %struct.camif_fmt** %15, align 8
  %26 = icmp eq %struct.camif_fmt* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %168

33:                                               ; preds = %3
  %34 = load %struct.camif_fmt**, %struct.camif_fmt*** %7, align 8
  %35 = icmp ne %struct.camif_fmt** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.camif_fmt*, %struct.camif_fmt** %15, align 8
  %38 = load %struct.camif_fmt**, %struct.camif_fmt*** %7, align 8
  store %struct.camif_fmt* %37, %struct.camif_fmt** %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.camif_dev*, %struct.camif_dev** %8, align 8
  %41 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.vp_pix_limits*, %struct.vp_pix_limits** %43, align 8
  %45 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %46 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.vp_pix_limits, %struct.vp_pix_limits* %44, i64 %47
  store %struct.vp_pix_limits* %48, %struct.vp_pix_limits** %14, align 8
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %57, i32 %60, i32 %63)
  %65 = load i32, i32* @SCALER_MAX_RATIO, align 4
  %66 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %67 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ffs(i32 %68)
  %70 = sub nsw i32 %69, 3
  %71 = shl i32 1, %70
  %72 = call i32 @min(i32 %65, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* @SCALER_MAX_RATIO, align 4
  %74 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %75 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ffs(i32 %76)
  %78 = sub nsw i32 %77, 1
  %79 = shl i32 1, %78
  %80 = call i32 @min(i32 %73, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* @u32, align 4
  %82 = load %struct.vp_pix_limits*, %struct.vp_pix_limits** %14, align 8
  %83 = getelementptr inbounds %struct.vp_pix_limits, %struct.vp_pix_limits* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %86 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = udiv i32 %87, %88
  %90 = call i32 @max_t(i32 %81, i32 %84, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.vp_pix_limits*, %struct.vp_pix_limits** %14, align 8
  %93 = getelementptr inbounds %struct.vp_pix_limits, %struct.vp_pix_limits* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @round_up(i32 %91, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @u32, align 4
  %97 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %98 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %13, align 4
  %101 = udiv i32 %99, %100
  %102 = call i32 @max_t(i32 %96, i32 8, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @round_up(i32 %103, i32 8)
  store i32 %104, i32* %11, align 4
  %105 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %106 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %105, i32 0, i32 0
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.vp_pix_limits*, %struct.vp_pix_limits** %14, align 8
  %109 = getelementptr inbounds %struct.vp_pix_limits, %struct.vp_pix_limits* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.vp_pix_limits*, %struct.vp_pix_limits** %14, align 8
  %112 = getelementptr inbounds %struct.vp_pix_limits, %struct.vp_pix_limits* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ffs(i32 %113)
  %115 = sub nsw i32 %114, 1
  %116 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %117 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %116, i32 0, i32 1
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.vp_pix_limits*, %struct.vp_pix_limits** %14, align 8
  %120 = getelementptr inbounds %struct.vp_pix_limits, %struct.vp_pix_limits* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @v4l_bound_align_image(i32* %106, i32 %107, i32 %110, i32 %115, i32* %117, i32 %118, i32 %121, i32 0, i32 0)
  %123 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %124 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.camif_fmt*, %struct.camif_fmt** %15, align 8
  %127 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %125, %128
  %130 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %131 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %133 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %136 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %134, %137
  %139 = load %struct.camif_fmt*, %struct.camif_fmt** %15, align 8
  %140 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %138, %141
  %143 = sdiv i32 %142, 8
  %144 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %145 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load %struct.camif_fmt*, %struct.camif_fmt** %15, align 8
  %147 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %150 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %152 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %153 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %155 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %156 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %158 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %161 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %159, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166)
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %39, %30
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local %struct.camif_fmt* @s3c_camif_find_format(%struct.camif_vp*, i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
