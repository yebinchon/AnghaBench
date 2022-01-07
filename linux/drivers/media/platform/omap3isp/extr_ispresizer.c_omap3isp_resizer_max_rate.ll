; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_omap3isp_resizer_max_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_omap3isp_resizer_max_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { %struct.TYPE_5__, %struct.v4l2_mbus_framefmt*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.isp_pipeline = type { i64 }

@RESZ_PAD_SOURCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_resizer_max_rate(%struct.isp_res_device* %0, i32* %1) #0 {
  %3 = alloca %struct.isp_res_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.isp_pipeline*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.isp_res_device* %0, %struct.isp_res_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %10 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %11)
  store %struct.isp_pipeline* %12, %struct.isp_pipeline** %5, align 8
  %13 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %14 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %13, i32 0, i32 1
  %15 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %16 = load i64, i64* @RESZ_PAD_SOURCE, align 8
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %15, i64 %16
  store %struct.v4l2_mbus_framefmt* %17, %struct.v4l2_mbus_framefmt** %6, align 8
  %18 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %19 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @min(i64 %20, i64 200000000)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %25 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %23, %28
  %30 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @div_u64(i32 %29, i32 %32)
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = udiv i64 %36, 2
  %38 = call i64 @min(i64 %35, i64 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %42 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %40, %45
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @div_u64(i32 %46, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32*, i32** %4, align 8
  store i32 %51, i32* %52, align 4
  ret void
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
