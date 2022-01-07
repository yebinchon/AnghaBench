; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_crop_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_crop_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i64, i32, %struct.TYPE_5__, i64, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.v4l2_mbus_framefmt = type { i32 }

@RESIZE_DIVISOR = common dso_local global i64 0, align 8
@RSZ_THE_SAME = common dso_local global i32 0, align 4
@RSZ_BILINEAR = common dso_local global i32 0, align 4
@RESIZER_INPUT_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_res_device*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*)* @resizer_set_crop_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_set_crop_params(%struct.isp_res_device* %0, %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt* %2) #0 {
  %4 = alloca %struct.isp_res_device*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.isp_res_device* %0, %struct.isp_res_device** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  store %struct.v4l2_mbus_framefmt* %2, %struct.v4l2_mbus_framefmt** %6, align 8
  %7 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %8 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %9 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %8, i32 0, i32 4
  %10 = call i32 @resizer_set_ratio(%struct.isp_res_device* %7, %struct.TYPE_6__* %9)
  %11 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %12 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RESIZE_DIVISOR, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %19 = load i32, i32* @RSZ_THE_SAME, align 4
  %20 = call i32 @resizer_set_bilinear(%struct.isp_res_device* %18, i32 %19)
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %23 = load i32, i32* @RSZ_BILINEAR, align 4
  %24 = call i32 @resizer_set_bilinear(%struct.isp_res_device* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %27 = call i32 @resizer_adjust_bandwidth(%struct.isp_res_device* %26)
  %28 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %29 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RESIZER_INPUT_MEMORY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %25
  %34 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %35 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %44 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %42, %47
  %49 = mul nsw i32 %48, 2
  %50 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %51 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %53 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %54 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sdiv i32 %55, 2
  %57 = and i32 %56, 15
  %58 = call i32 @resizer_set_start(%struct.isp_res_device* %52, i32 %57, i32 0)
  %59 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %60 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %61 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %64 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, -32
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %62, %67
  %69 = call i32 @__resizer_set_inaddr(%struct.isp_res_device* %59, i64 %68)
  br label %88

70:                                               ; preds = %25
  %71 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %72 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %73 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 2
  %78 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %79 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @resizer_set_start(%struct.isp_res_device* %71, i32 %77, i32 %82)
  %84 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %85 = call i32 @__resizer_set_inaddr(%struct.isp_res_device* %84, i64 0)
  %86 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %87 = call i32 @resizer_set_input_offset(%struct.isp_res_device* %86, i32 0)
  br label %88

88:                                               ; preds = %70, %33
  %89 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %90 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %91 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %96 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @resizer_set_input_size(%struct.isp_res_device* %89, i32 %94, i32 %99)
  ret void
}

declare dso_local i32 @resizer_set_ratio(%struct.isp_res_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @resizer_set_bilinear(%struct.isp_res_device*, i32) #1

declare dso_local i32 @resizer_adjust_bandwidth(%struct.isp_res_device*) #1

declare dso_local i32 @resizer_set_start(%struct.isp_res_device*, i32, i32) #1

declare dso_local i32 @__resizer_set_inaddr(%struct.isp_res_device*, i64) #1

declare dso_local i32 @resizer_set_input_offset(%struct.isp_res_device*, i32) #1

declare dso_local i32 @resizer_set_input_size(%struct.isp_res_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
