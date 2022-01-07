; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-scaler.c_vimc_sca_adjust_sink_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-scaler.c_vimc_sca_adjust_sink_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i64, i32 }
%struct.vimc_pix_map = type { i64 }

@sink_fmt_default = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@u32 = common dso_local global i32 0, align 4
@VIMC_FRAME_MIN_WIDTH = common dso_local global i32 0, align 4
@VIMC_FRAME_MAX_WIDTH = common dso_local global i32 0, align 4
@VIMC_FRAME_MIN_HEIGHT = common dso_local global i32 0, align 4
@VIMC_FRAME_MAX_HEIGHT = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_mbus_framefmt*)* @vimc_sca_adjust_sink_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vimc_sca_adjust_sink_fmt(%struct.v4l2_mbus_framefmt* %0) #0 {
  %2 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %3 = alloca %struct.vimc_pix_map*, align 8
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %2, align 8
  %4 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %5 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.vimc_pix_map* @vimc_pix_map_by_code(i32 %6)
  store %struct.vimc_pix_map* %7, %struct.vimc_pix_map** %3, align 8
  %8 = load %struct.vimc_pix_map*, %struct.vimc_pix_map** %3, align 8
  %9 = icmp ne %struct.vimc_pix_map* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.vimc_pix_map*, %struct.vimc_pix_map** %3, align 8
  %12 = getelementptr inbounds %struct.vimc_pix_map, %struct.vimc_pix_map* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10, %1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sink_fmt_default, i32 0, i32 1), align 8
  %17 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %15, %10
  %20 = load i32, i32* @u32, align 4
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VIMC_FRAME_MIN_WIDTH, align 4
  %25 = load i32, i32* @VIMC_FRAME_MAX_WIDTH, align 4
  %26 = call i32 @clamp_t(i32 %20, i32 %23, i32 %24, i32 %25)
  %27 = and i32 %26, -2
  %28 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @u32, align 4
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VIMC_FRAME_MIN_HEIGHT, align 4
  %35 = load i32, i32* @VIMC_FRAME_MAX_HEIGHT, align 4
  %36 = call i32 @clamp_t(i32 %30, i32 %33, i32 %34, i32 %35)
  %37 = and i32 %36, -2
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %19
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sink_fmt_default, i32 0, i32 0), align 8
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %19
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %51 = call i32 @vimc_colorimetry_clamp(%struct.v4l2_mbus_framefmt* %50)
  ret void
}

declare dso_local %struct.vimc_pix_map* @vimc_pix_map_by_code(i32) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

declare dso_local i32 @vimc_colorimetry_clamp(%struct.v4l2_mbus_framefmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
