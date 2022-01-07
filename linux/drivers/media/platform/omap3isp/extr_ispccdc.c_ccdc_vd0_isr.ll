; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_vd0_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_vd0_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i64, i32, i32, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.isp_pipeline = type { i32 }

@ISP_PIPELINE_STREAM_CONTINUOUS = common dso_local global i64 0, align 8
@CCDC_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@LSC_STATE_STOPPED = common dso_local global i64 0, align 8
@CCDC_EVENT_VD1 = common dso_local global i32 0, align 4
@CCDC_EVENT_VD0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*)* @ccdc_vd0_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_vd0_isr(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp_pipeline*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %7 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %12 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %13)
  store %struct.isp_pipeline* %14, %struct.isp_pipeline** %5, align 8
  %15 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %16 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %15, i32 0, i32 0
  %17 = call i32 @atomic_inc(i32* %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %20 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %25 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %24, i32 0, i32 2
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %29 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ISP_PIPELINE_STREAM_CONTINUOUS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %23
  %34 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %35 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CCDC_OUTPUT_MEMORY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %42 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LSC_STATE_STOPPED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %49 = call i32 @__ccdc_lsc_enable(%struct.isp_ccdc_device* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %52 = call i32 @__ccdc_enable(%struct.isp_ccdc_device* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %33, %23
  %54 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %55 = load i32, i32* @CCDC_EVENT_VD1, align 4
  %56 = call i64 @ccdc_handle_stopping(%struct.isp_ccdc_device* %54, i32 %55)
  %57 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %58 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %57, i32 0, i32 2
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %53, %18
  %62 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %63 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CCDC_OUTPUT_MEMORY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %70 = call i32 @ccdc_isr_buffer(%struct.isp_ccdc_device* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %61
  %72 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %73 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %72, i32 0, i32 2
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %77 = load i32, i32* @CCDC_EVENT_VD0, align 4
  %78 = call i64 @ccdc_handle_stopping(%struct.isp_ccdc_device* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %82 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %81, i32 0, i32 2
  %83 = load i64, i64* %3, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  br label %103

85:                                               ; preds = %71
  %86 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %87 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %92 = call i32 @ccdc_apply_controls(%struct.isp_ccdc_device* %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %95 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %94, i32 0, i32 2
  %96 = load i64, i64* %3, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %102 = call i32 @ccdc_enable(%struct.isp_ccdc_device* %101)
  br label %103

103:                                              ; preds = %80, %100, %93
  ret void
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__ccdc_lsc_enable(%struct.isp_ccdc_device*, i32) #1

declare dso_local i32 @__ccdc_enable(%struct.isp_ccdc_device*, i32) #1

declare dso_local i64 @ccdc_handle_stopping(%struct.isp_ccdc_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ccdc_isr_buffer(%struct.isp_ccdc_device*) #1

declare dso_local i32 @ccdc_apply_controls(%struct.isp_ccdc_device*) #1

declare dso_local i32 @ccdc_enable(%struct.isp_ccdc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
