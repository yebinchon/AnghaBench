; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_update_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_update_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.prev_params* }
%struct.prev_params = type { i32, i32 }

@OMAP3ISP_PREV_BRIGHTNESS = common dso_local global i32 0, align 4
@ISPPRV_BRIGHT_UNITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, i32)* @preview_update_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_update_brightness(%struct.isp_prev_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.prev_params*, align 8
  %6 = alloca i64, align 8
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %8 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %13 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @OMAP3ISP_PREV_BRIGHTNESS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %21 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load %struct.prev_params*, %struct.prev_params** %22, align 8
  %24 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %23, i64 0
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %27 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load %struct.prev_params*, %struct.prev_params** %28, align 8
  %30 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %29, i64 1
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi %struct.prev_params* [ %24, %19 ], [ %30, %25 ]
  store %struct.prev_params* %32, %struct.prev_params** %5, align 8
  %33 = load %struct.prev_params*, %struct.prev_params** %5, align 8
  %34 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ISPPRV_BRIGHT_UNITS, align 4
  %38 = mul nsw i32 %36, %37
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ISPPRV_BRIGHT_UNITS, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load %struct.prev_params*, %struct.prev_params** %5, align 8
  %45 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @OMAP3ISP_PREV_BRIGHTNESS, align 4
  %47 = load %struct.prev_params*, %struct.prev_params** %5, align 8
  %48 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %40, %31
  %52 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %53 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
