; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_vd1_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_vd1_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64, i32, i32* }

@CCDC_STOP_REQUEST = common dso_local global i32 0, align 4
@CCDC_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@LSC_STATE_STOPPED = common dso_local global i64 0, align 8
@CCDC_EVENT_VD1 = common dso_local global i32 0, align 4
@LSC_STATE_RUNNING = common dso_local global i64 0, align 8
@LSC_STATE_RECONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*)* @ccdc_vd1_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_vd1_isr(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  %3 = alloca i64, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  %4 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %5 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %88

9:                                                ; preds = %1
  %10 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %11 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %16 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %44 [
    i32 129, label %18
    i32 130, label %22
    i32 128, label %43
  ]

18:                                               ; preds = %9
  %19 = load i32, i32* @CCDC_STOP_REQUEST, align 4
  %20 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %21 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  br label %44

22:                                               ; preds = %9
  %23 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %24 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CCDC_OUTPUT_MEMORY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %31 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LSC_STATE_STOPPED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %38 = call i32 @__ccdc_lsc_enable(%struct.isp_ccdc_device* %37, i32 0)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %41 = call i32 @__ccdc_enable(%struct.isp_ccdc_device* %40, i32 0)
  br label %42

42:                                               ; preds = %39, %22
  br label %44

43:                                               ; preds = %9
  br label %44

44:                                               ; preds = %9, %43, %42, %18
  %45 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %46 = load i32, i32* @CCDC_EVENT_VD1, align 4
  %47 = call i64 @ccdc_handle_stopping(%struct.isp_ccdc_device* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %82

50:                                               ; preds = %44
  %51 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %52 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %82

57:                                               ; preds = %50
  %58 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %59 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @LSC_STATE_RUNNING, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %66 = call i32 @__ccdc_lsc_enable(%struct.isp_ccdc_device* %65, i32 0)
  %67 = load i64, i64* @LSC_STATE_RECONFIG, align 8
  %68 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %69 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  br label %82

71:                                               ; preds = %57
  %72 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %73 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LSC_STATE_STOPPED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %80 = call i32 @ccdc_lsc_enable(%struct.isp_ccdc_device* %79)
  br label %81

81:                                               ; preds = %78, %71
  br label %82

82:                                               ; preds = %81, %64, %56, %49
  %83 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %84 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %88

88:                                               ; preds = %82, %8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__ccdc_lsc_enable(%struct.isp_ccdc_device*, i32) #1

declare dso_local i32 @__ccdc_enable(%struct.isp_ccdc_device*, i32) #1

declare dso_local i64 @ccdc_handle_stopping(%struct.isp_ccdc_device*, i32) #1

declare dso_local i32 @ccdc_lsc_enable(%struct.isp_ccdc_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
