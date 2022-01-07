; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i64, i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@ISP_PIPELINE_STREAM_CONTINUOUS = common dso_local global i64 0, align 8
@CCDC_STOP_REQUEST = common dso_local global i64 0, align 8
@CCDC_STOP_FINISHED = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CCDC stop timeout!\0A\00", align 1
@OMAP3_ISP_SBL_CCDC_LSC_READ = common dso_local global i32 0, align 4
@CCDC_STOP_NOT_REQUESTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccdc_device*)* @ccdc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_disable(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %6 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %5, i32 0, i32 5
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %10 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ISP_PIPELINE_STREAM_CONTINUOUS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i64, i64* @CCDC_STOP_REQUEST, align 8
  %16 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %17 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %20 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* @CCDC_STOP_FINISHED, align 8
  %25 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %26 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %29 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %28, i32 0, i32 5
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %33 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %36 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CCDC_STOP_FINISHED, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @msecs_to_jiffies(i32 2000)
  %42 = call i32 @wait_event_timeout(i32 %34, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %27
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  %48 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %49 = call i32 @to_device(%struct.isp_ccdc_device* %48)
  %50 = call i32 @dev_warn(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %45, %27
  %52 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %53 = call i32 @to_isp_device(%struct.isp_ccdc_device* %52)
  %54 = load i32, i32* @OMAP3_ISP_SBL_CCDC_LSC_READ, align 4
  %55 = call i32 @omap3isp_sbl_disable(i32 %53, i32 %54)
  %56 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %57 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %56, i32 0, i32 2
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %60 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %61 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @ccdc_lsc_free_request(%struct.isp_ccdc_device* %59, i32* %63)
  %65 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %66 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %70 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i32* %68, i32** %71, align 8
  %72 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %73 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %76 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = call i32 @cancel_work_sync(i32* %77)
  %79 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %80 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %81 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @ccdc_lsc_free_queue(%struct.isp_ccdc_device* %79, i32* %82)
  %84 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %85 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i64, i64* @CCDC_STOP_NOT_REQUESTED, align 8
  %88 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %89 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* %4, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %51
  br label %95

93:                                               ; preds = %51
  %94 = load i32, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = phi i32 [ 0, %92 ], [ %94, %93 ]
  ret i32 %96
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @to_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @omap3isp_sbl_disable(i32, i32) #1

declare dso_local i32 @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ccdc_lsc_free_request(%struct.isp_ccdc_device*, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ccdc_lsc_free_queue(%struct.isp_ccdc_device*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
