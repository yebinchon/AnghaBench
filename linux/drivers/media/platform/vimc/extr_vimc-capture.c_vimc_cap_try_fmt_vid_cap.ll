; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-capture.c_vimc_cap_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-capture.c_vimc_cap_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i64, i32 }
%struct.vimc_pix_map = type { i32 }

@u32 = common dso_local global i32 0, align 4
@VIMC_FRAME_MIN_WIDTH = common dso_local global i32 0, align 4
@VIMC_FRAME_MAX_WIDTH = common dso_local global i32 0, align 4
@VIMC_FRAME_MIN_HEIGHT = common dso_local global i32 0, align 4
@VIMC_FRAME_MAX_HEIGHT = common dso_local global i32 0, align 4
@fmt_default = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vimc_cap_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vimc_cap_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca %struct.vimc_pix_map*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.v4l2_pix_format* %11, %struct.v4l2_pix_format** %7, align 8
  %12 = load i32, i32* @u32, align 4
  %13 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VIMC_FRAME_MIN_WIDTH, align 4
  %17 = load i32, i32* @VIMC_FRAME_MAX_WIDTH, align 4
  %18 = call i32 @clamp_t(i32 %12, i32 %15, i32 %16, i32 %17)
  %19 = and i32 %18, -2
  %20 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @u32, align 4
  %23 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VIMC_FRAME_MIN_HEIGHT, align 4
  %27 = load i32, i32* @VIMC_FRAME_MAX_HEIGHT, align 4
  %28 = call i32 @clamp_t(i32 %22, i32 %25, i32 %26, i32 %27)
  %29 = and i32 %28, -2
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.vimc_pix_map* @vimc_pix_map_by_pixelformat(i32 %34)
  store %struct.vimc_pix_map* %35, %struct.vimc_pix_map** %8, align 8
  %36 = load %struct.vimc_pix_map*, %struct.vimc_pix_map** %8, align 8
  %37 = icmp ne %struct.vimc_pix_map* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fmt_default, i32 0, i32 1), align 8
  %40 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.vimc_pix_map* @vimc_pix_map_by_pixelformat(i32 %44)
  store %struct.vimc_pix_map* %45, %struct.vimc_pix_map** %8, align 8
  br label %46

46:                                               ; preds = %38, %3
  %47 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vimc_pix_map*, %struct.vimc_pix_map** %8, align 8
  %51 = getelementptr inbounds %struct.vimc_pix_map, %struct.vimc_pix_map* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %46
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fmt_default, i32 0, i32 0), align 8
  %72 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %72, i32 0, i32 4
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %46
  %75 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %76 = call i32 @vimc_colorimetry_clamp(%struct.v4l2_pix_format* %75)
  ret i32 0
}

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

declare dso_local %struct.vimc_pix_map* @vimc_pix_map_by_pixelformat(i32) #1

declare dso_local i32 @vimc_colorimetry_clamp(%struct.v4l2_pix_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
