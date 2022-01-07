; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_try_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_try_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.isp_format_info = type { i64 }

@MEDIA_BUS_FMT_Y8_1X8 = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@CCDC_MIN_WIDTH = common dso_local global i32 0, align 4
@CCDC_MIN_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_rect*)* @ccdc_try_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_try_crop(%struct.isp_ccdc_device* %0, %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_rect* %2) #0 {
  %4 = alloca %struct.isp_ccdc_device*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca %struct.isp_format_info*, align 8
  %8 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %6, align 8
  %9 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.isp_format_info* @omap3isp_video_format_info(i32 %11)
  store %struct.isp_format_info* %12, %struct.isp_format_info** %7, align 8
  %13 = load %struct.isp_format_info*, %struct.isp_format_info** %7, align 8
  %14 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MEDIA_BUS_FMT_Y8_1X8, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -2
  store i32 %22, i32* %20, align 4
  %23 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, -2
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %18, %3
  %28 = load i32, i32* @u32, align 4
  %29 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CCDC_MIN_WIDTH, align 4
  %36 = sub i32 %34, %35
  %37 = call i32 @clamp_t(i32 %28, i32 %31, i32 0, i32 %36)
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @u32, align 4
  %41 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CCDC_MIN_HEIGHT, align 4
  %48 = sub i32 %46, %47
  %49 = call i32 @clamp_t(i32 %40, i32 %43, i32 0, i32 %48)
  %50 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = add nsw i32 %58, 15
  %60 = and i32 %59, -16
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @u32, align 4
  %62 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CCDC_MIN_WIDTH, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @clamp_t(i32 %61, i32 %64, i32 %65, i32 %66)
  %68 = and i32 %67, -16
  %69 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %70 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @u32, align 4
  %72 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CCDC_MIN_HEIGHT, align 4
  %76 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %80 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %78, %81
  %83 = call i32 @clamp_t(i32 %71, i32 %74, i32 %75, i32 %82)
  %84 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.isp_format_info*, %struct.isp_format_info** %7, align 8
  %87 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MEDIA_BUS_FMT_Y8_1X8, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %27
  %92 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, -2
  store i32 %95, i32* %93, align 4
  %96 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %97 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, -2
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %91, %27
  ret void
}

declare dso_local %struct.isp_format_info* @omap3isp_video_format_info(i32) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
