; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_omap3isp_hist_dma_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_omap3isp_hist_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"hist: Out of synchronization with CCDC. Ignoring next buffer.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_hist_dma_done(%struct.isp_device* %0) #0 {
  %2 = alloca %struct.isp_device*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %2, align 8
  %3 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %4 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %3, i32 0, i32 2
  %5 = call i64 @omap3isp_ccdc_busy(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %9 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %8, i32 0, i32 1
  %10 = call i64 @omap3isp_stat_pcr_busy(%struct.TYPE_2__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7, %1
  %13 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %14 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @atomic_set(i32* %15, i32 1)
  %17 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %18 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %12, %7
  ret void
}

declare dso_local i64 @omap3isp_ccdc_busy(i32*) #1

declare dso_local i64 @omap3isp_stat_pcr_busy(%struct.TYPE_2__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
