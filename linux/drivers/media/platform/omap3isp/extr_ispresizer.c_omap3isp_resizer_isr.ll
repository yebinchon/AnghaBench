; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_omap3isp_resizer_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_omap3isp_resizer_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i32, i64, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@RESZ_PAD_SOURCE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@RESZ_PAD_SINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_resizer_isr(%struct.isp_res_device* %0) #0 {
  %2 = alloca %struct.isp_res_device*, align 8
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca i64, align 8
  store %struct.isp_res_device* %0, %struct.isp_res_device** %2, align 8
  %6 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %7 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %6, i32 0, i32 3
  %8 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %9 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %8, i32 0, i32 2
  %10 = call i64 @omap3isp_module_sync_is_stopping(i32* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %15 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %19 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %24 = load i32, i32* @RESZ_PAD_SOURCE, align 4
  %25 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %26 = call %struct.v4l2_mbus_framefmt* @__resizer_get_format(%struct.isp_res_device* %23, i32* null, i32 %24, i32 %25)
  store %struct.v4l2_mbus_framefmt* %26, %struct.v4l2_mbus_framefmt** %4, align 8
  %27 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %28 = load i32, i32* @RESZ_PAD_SINK, align 4
  %29 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %30 = call %struct.v4l2_mbus_framefmt* @__resizer_get_format(%struct.isp_res_device* %27, i32* null, i32 %28, i32 %29)
  store %struct.v4l2_mbus_framefmt* %30, %struct.v4l2_mbus_framefmt** %3, align 8
  %31 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %34 = call i32 @resizer_set_crop_params(%struct.isp_res_device* %31, %struct.v4l2_mbus_framefmt* %32, %struct.v4l2_mbus_framefmt* %33)
  %35 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %36 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %22, %13
  %38 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %39 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %43 = call i32 @resizer_isr_buffer(%struct.isp_res_device* %42)
  br label %44

44:                                               ; preds = %37, %12
  ret void
}

declare dso_local i64 @omap3isp_module_sync_is_stopping(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__resizer_get_format(%struct.isp_res_device*, i32*, i32, i32) #1

declare dso_local i32 @resizer_set_crop_params(%struct.isp_res_device*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @resizer_isr_buffer(%struct.isp_res_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
