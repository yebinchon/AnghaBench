; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_try_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_try_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i64 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i64 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@PREV_MARGIN_LEFT = common dso_local global i32 0, align 4
@PREV_MARGIN_RIGHT = common dso_local global i32 0, align 4
@PREV_MARGIN_TOP = common dso_local global i32 0, align 4
@PREV_MARGIN_BOTTOM = common dso_local global i32 0, align 4
@PREVIEW_INPUT_CCDC = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_Y8_1X8 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_Y10_1X10 = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@PREV_MIN_OUT_WIDTH = common dso_local global i32 0, align 4
@PREV_MIN_OUT_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_rect*)* @preview_try_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_try_crop(%struct.isp_prev_device* %0, %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_rect* %2) #0 {
  %4 = alloca %struct.isp_prev_device*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %6, align 8
  %11 = load i32, i32* @PREV_MARGIN_LEFT, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PREV_MARGIN_RIGHT, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @PREV_MARGIN_TOP, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PREV_MARGIN_BOTTOM, align 4
  %22 = sub i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %24 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PREVIEW_INPUT_CCDC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 2
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub i32 %31, 2
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MEDIA_BUS_FMT_Y8_1X8, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MEDIA_BUS_FMT_Y10_1X10, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 2
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub i32 %48, 2
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 2
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sub i32 %52, 2
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %45, %39, %33
  %55 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -2
  store i32 %58, i32* %56, align 4
  %59 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, -2
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @u32, align 4
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @PREV_MIN_OUT_WIDTH, align 4
  %70 = sub i32 %68, %69
  %71 = call i8* @clamp_t(i32 %63, i32 %66, i32 %67, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @u32, align 4
  %76 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %77 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @PREV_MIN_OUT_HEIGHT, align 4
  %82 = sub i32 %80, %81
  %83 = call i8* @clamp_t(i32 %75, i32 %78, i32 %79, i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %86 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @u32, align 4
  %88 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PREV_MIN_OUT_WIDTH, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %94 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sub i32 %92, %95
  %97 = call i8* @clamp_t(i32 %87, i32 %90, i32 %91, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %100 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @u32, align 4
  %102 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %103 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PREV_MIN_OUT_HEIGHT, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %108 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %106, %109
  %111 = call i8* @clamp_t(i32 %101, i32 %104, i32 %105, i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %114 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  ret void
}

declare dso_local i8* @clamp_t(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
