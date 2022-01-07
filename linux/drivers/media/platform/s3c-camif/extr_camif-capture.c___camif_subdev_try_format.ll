; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c___camif_subdev_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c___camif_subdev_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { i32, %struct.v4l2_rect, %struct.s3c_camif_variant* }
%struct.v4l2_rect = type { i32, i32 }
%struct.s3c_camif_variant = type { %struct.vp_pix_limits* }
%struct.vp_pix_limits = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32 }

@VP_CODEC = common dso_local global i64 0, align 8
@camif_mbus_formats = common dso_local global i64* null, align 8
@CAMIF_SD_PAD_SINK = common dso_local global i32 0, align 4
@CAMIF_MAX_PIX_WIDTH = common dso_local global i32 0, align 4
@CAMIF_MAX_PIX_HEIGHT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%ux%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camif_dev*, %struct.v4l2_mbus_framefmt*, i32)* @__camif_subdev_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__camif_subdev_try_format(%struct.camif_dev* %0, %struct.v4l2_mbus_framefmt* %1, i32 %2) #0 {
  %4 = alloca %struct.camif_dev*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s3c_camif_variant*, align 8
  %8 = alloca %struct.vp_pix_limits*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_rect*, align 8
  store %struct.camif_dev* %0, %struct.camif_dev** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %12 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %11, i32 0, i32 2
  %13 = load %struct.s3c_camif_variant*, %struct.s3c_camif_variant** %12, align 8
  store %struct.s3c_camif_variant* %13, %struct.s3c_camif_variant** %7, align 8
  %14 = load %struct.s3c_camif_variant*, %struct.s3c_camif_variant** %7, align 8
  %15 = getelementptr inbounds %struct.s3c_camif_variant, %struct.s3c_camif_variant* %14, i32 0, i32 0
  %16 = load %struct.vp_pix_limits*, %struct.vp_pix_limits** %15, align 8
  %17 = load i64, i64* @VP_CODEC, align 8
  %18 = getelementptr inbounds %struct.vp_pix_limits, %struct.vp_pix_limits* %16, i64 %17
  store %struct.vp_pix_limits* %18, %struct.vp_pix_limits** %8, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %36, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i64*, i64** @camif_mbus_formats, align 8
  %22 = call i32 @ARRAY_SIZE(i64* %21)
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i64*, i64** @camif_mbus_formats, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %39

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %19

39:                                               ; preds = %34, %19
  %40 = load i32, i32* %9, align 4
  %41 = load i64*, i64** @camif_mbus_formats, align 8
  %42 = call i32 @ARRAY_SIZE(i64* %41)
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64*, i64** @camif_mbus_formats, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @CAMIF_SD_PAD_SINK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %55, i32 0, i32 2
  %57 = load i32, i32* @CAMIF_MAX_PIX_WIDTH, align 4
  %58 = load %struct.vp_pix_limits*, %struct.vp_pix_limits** %8, align 8
  %59 = getelementptr inbounds %struct.vp_pix_limits, %struct.vp_pix_limits* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ffs(i32 %60)
  %62 = sub nsw i64 %61, 1
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 1
  %65 = load i32, i32* @CAMIF_MAX_PIX_HEIGHT, align 4
  %66 = call i32 @v4l_bound_align_image(i32* %56, i32 8, i32 %57, i64 %62, i32* %64, i32 8, i32 %65, i32 0, i32 0)
  br label %86

67:                                               ; preds = %50
  %68 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %69 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %68, i32 0, i32 1
  store %struct.v4l2_rect* %69, %struct.v4l2_rect** %10, align 8
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %70, i32 0, i32 2
  %72 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %73 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vp_pix_limits*, %struct.vp_pix_limits** %8, align 8
  %76 = getelementptr inbounds %struct.vp_pix_limits, %struct.vp_pix_limits* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ffs(i32 %77)
  %79 = sub nsw i64 %78, 1
  %80 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %80, i32 0, i32 1
  %82 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @v4l_bound_align_image(i32* %71, i32 8, i32 %74, i64 %79, i32* %81, i32 8, i32 %84, i32 0, i32 0)
  br label %86

86:                                               ; preds = %67, %54
  %87 = load i32, i32* @debug, align 4
  %88 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %89 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %88, i32 0, i32 0
  %90 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @v4l2_dbg(i32 1, i32 %87, i32* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %95)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
