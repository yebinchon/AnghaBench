; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_omap3isp_preview_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_omap3isp_preview_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i64, i32, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PREVIEW_INPUT_MEMORY = common dso_local global i64 0, align 8
@PREVIEW_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM_CONTINUOUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_preview_isr(%struct.isp_prev_device* %0) #0 {
  %2 = alloca %struct.isp_prev_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %2, align 8
  %6 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %7 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %6, i32 0, i32 5
  %8 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %9 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %8, i32 0, i32 4
  %10 = call i64 @omap3isp_module_sync_is_stopping(i32* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %78

13:                                               ; preds = %1
  %14 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %15 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %20 = call i32 @preview_params_switch(%struct.isp_prev_device* %19)
  %21 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %22 = call i32 @preview_params_lock(%struct.isp_prev_device* %21, i32 0, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %24 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %28 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @preview_setup_hw(%struct.isp_prev_device* %32, i32 %33, i32 %34)
  %36 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @preview_config_input_size(%struct.isp_prev_device* %36, i32 %37)
  %39 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %40 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PREVIEW_INPUT_MEMORY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %13
  %45 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %46 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PREVIEW_OUTPUT_MEMORY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %13
  %52 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %53 = call i32 @preview_isr_buffer(%struct.isp_prev_device* %52)
  br label %64

54:                                               ; preds = %44
  %55 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %56 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ISP_PIPELINE_STREAM_CONTINUOUS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %62 = call i32 @preview_enable_oneshot(%struct.isp_prev_device* %61)
  br label %63

63:                                               ; preds = %60, %54
  br label %64

64:                                               ; preds = %63, %51
  %65 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %66 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @preview_params_unlock(%struct.isp_prev_device* %70, i32 %71, i32 0)
  %73 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %74 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %64, %12
  ret void
}

declare dso_local i64 @omap3isp_module_sync_is_stopping(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @preview_params_switch(%struct.isp_prev_device*) #1

declare dso_local i32 @preview_params_lock(%struct.isp_prev_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @preview_setup_hw(%struct.isp_prev_device*, i32, i32) #1

declare dso_local i32 @preview_config_input_size(%struct.isp_prev_device*, i32) #1

declare dso_local i32 @preview_isr_buffer(%struct.isp_prev_device*) #1

declare dso_local i32 @preview_enable_oneshot(%struct.isp_prev_device*) #1

declare dso_local i32 @preview_params_unlock(%struct.isp_prev_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
