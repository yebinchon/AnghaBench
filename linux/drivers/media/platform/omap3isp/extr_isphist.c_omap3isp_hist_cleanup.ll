; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_omap3isp_hist_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_omap3isp_hist_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { %struct.ispstat }
%struct.ispstat = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_hist_cleanup(%struct.isp_device* %0) #0 {
  %2 = alloca %struct.isp_device*, align 8
  %3 = alloca %struct.ispstat*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %2, align 8
  %4 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %5 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %4, i32 0, i32 0
  store %struct.ispstat* %5, %struct.ispstat** %3, align 8
  %6 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %7 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %12 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dma_release_channel(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %17 = call i32 @omap3isp_stat_cleanup(%struct.ispstat* %16)
  ret void
}

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @omap3isp_stat_cleanup(%struct.ispstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
