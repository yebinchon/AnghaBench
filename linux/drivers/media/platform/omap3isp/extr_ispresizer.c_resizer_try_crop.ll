; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_try_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_try_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@DEFAULT_PHASE = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@MIN_IN_WIDTH = common dso_local global i32 0, align 4
@MIN_IN_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_rect*)* @resizer_try_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_try_crop(%struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_rect* %2) #0 {
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %6, align 8
  %13 = load i32, i32* @DEFAULT_PHASE, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @DEFAULT_PHASE, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul i32 32, %15
  %17 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = mul nsw i32 %20, 64
  %22 = add i32 %16, %21
  %23 = add i32 %22, 16
  %24 = lshr i32 %23, 8
  %25 = add i32 %24, 7
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = mul i32 32, %26
  %28 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = mul nsw i32 %31, 64
  %33 = add i32 %27, %32
  %34 = add i32 %33, 16
  %35 = lshr i32 %34, 8
  %36 = add i32 %35, 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul i32 64, %37
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = mul nsw i32 %42, 1024
  %44 = add i32 %38, %43
  %45 = add i32 %44, 32
  %46 = lshr i32 %45, 8
  %47 = add i32 %46, 7
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul i32 64, %48
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = mul nsw i32 %53, 1024
  %55 = add i32 %49, %54
  %56 = add i32 %55, 32
  %57 = lshr i32 %56, 8
  %58 = add i32 %57, 7
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* @u32, align 4
  %60 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i8* @clamp_t(i32 %59, i32 %62, i32 %63, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @u32, align 4
  %70 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i8* @clamp_t(i32 %69, i32 %72, i32 %73, i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %78 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @u32, align 4
  %80 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %81 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %84 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MIN_IN_WIDTH, align 4
  %87 = sub i32 %85, %86
  %88 = call i8* @clamp_t(i32 %79, i32 %82, i32 0, i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %91 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @u32, align 4
  %93 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %94 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MIN_IN_WIDTH, align 4
  %97 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %98 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %101 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = sub i32 %99, %102
  %104 = call i8* @clamp_t(i32 %92, i32 %95, i32 %96, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %107 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @u32, align 4
  %109 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %110 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %113 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MIN_IN_HEIGHT, align 4
  %116 = sub i32 %114, %115
  %117 = call i8* @clamp_t(i32 %108, i32 %111, i32 0, i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %120 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @u32, align 4
  %122 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %123 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @MIN_IN_HEIGHT, align 4
  %126 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %127 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %130 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sub i32 %128, %131
  %133 = call i8* @clamp_t(i32 %121, i32 %124, i32 %125, i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %136 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  ret void
}

declare dso_local i8* @clamp_t(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
