; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.isp_pipeline = type { i32 }

@IRQ0STATUS_CCDC_LSC_PREF_ERR_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"lsc prefetch error\0A\00", align 1
@IRQ0STATUS_CCDC_LSC_DONE_IRQ = common dso_local global i32 0, align 4
@LSC_STATE_STOPPING = common dso_local global i64 0, align 8
@LSC_STATE_STOPPED = common dso_local global i8* null, align 8
@CCDC_EVENT_LSC_DONE = common dso_local global i32 0, align 4
@LSC_STATE_RECONFIG = common dso_local global i64 0, align 8
@IRQ0STATUS_HS_VS_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*, i32)* @ccdc_lsc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_lsc_isr(%struct.isp_ccdc_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isp_ccdc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.isp_pipeline*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @IRQ0STATUS_CCDC_LSC_PREF_ERR_IRQ, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %13 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %14)
  store %struct.isp_pipeline* %15, %struct.isp_pipeline** %6, align 8
  %16 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %17 = call i32 @ccdc_lsc_error_handler(%struct.isp_ccdc_device* %16)
  %18 = load %struct.isp_pipeline*, %struct.isp_pipeline** %6, align 8
  %19 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %21 = call i32 @to_device(%struct.isp_ccdc_device* %20)
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %11, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @IRQ0STATUS_CCDC_LSC_DONE_IRQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %88

29:                                               ; preds = %23
  %30 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %31 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %36 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LSC_STATE_STOPPING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i8*, i8** @LSC_STATE_STOPPED, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %45 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %29
  %48 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %49 = load i32, i32* @CCDC_EVENT_LSC_DONE, align 4
  %50 = call i64 @ccdc_handle_stopping(%struct.isp_ccdc_device* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %82

53:                                               ; preds = %47
  %54 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %55 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LSC_STATE_RECONFIG, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %82

61:                                               ; preds = %53
  %62 = load i8*, i8** @LSC_STATE_STOPPED, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %65 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @IRQ0STATUS_HS_VS_IRQ, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %82

72:                                               ; preds = %61
  %73 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %74 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %82

79:                                               ; preds = %72
  %80 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %81 = call i32 @ccdc_lsc_enable(%struct.isp_ccdc_device* %80)
  br label %82

82:                                               ; preds = %79, %78, %71, %60, %52
  %83 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %84 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %88

88:                                               ; preds = %82, %28
  ret void
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i32 @ccdc_lsc_error_handler(%struct.isp_ccdc_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @to_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ccdc_handle_stopping(%struct.isp_ccdc_device*, i32) #1

declare dso_local i32 @ccdc_lsc_enable(%struct.isp_ccdc_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
