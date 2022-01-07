; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_omap3isp_ccdc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_omap3isp_ccdc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { %struct.isp_ccdc_device }
%struct.isp_ccdc_device = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@CCDC_STOP_NOT_REQUESTED = common dso_local global i32 0, align 4
@ccdc_lsc_free_table_work = common dso_local global i32 0, align 4
@LSC_STATE_STOPPED = common dso_local global i32 0, align 4
@OMAP3ISP_CCDC_BLCLAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_ccdc_init(%struct.isp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.isp_ccdc_device*, align 8
  %5 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %3, align 8
  %6 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %7 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %6, i32 0, i32 0
  store %struct.isp_ccdc_device* %7, %struct.isp_ccdc_device** %4, align 8
  %8 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %9 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %8, i32 0, i32 6
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %12 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %11, i32 0, i32 5
  %13 = call i32 @init_waitqueue_head(i32* %12)
  %14 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %15 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %14, i32 0, i32 0
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load i32, i32* @CCDC_STOP_NOT_REQUESTED, align 4
  %18 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %19 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %21 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* @ccdc_lsc_free_table_work, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load i32, i32* @LSC_STATE_STOPPED, align 4
  %26 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %27 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %30 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %34 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %38 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %41 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @OMAP3ISP_CCDC_BLCLAMP, align 4
  %44 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %45 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %47 = call i32 @ccdc_apply_controls(%struct.isp_ccdc_device* %46)
  %48 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %49 = call i32 @ccdc_init_entities(%struct.isp_ccdc_device* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %1
  %53 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %54 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %53, i32 0, i32 0
  %55 = call i32 @mutex_destroy(i32* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ccdc_apply_controls(%struct.isp_ccdc_device*) #1

declare dso_local i32 @ccdc_init_entities(%struct.isp_ccdc_device*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
