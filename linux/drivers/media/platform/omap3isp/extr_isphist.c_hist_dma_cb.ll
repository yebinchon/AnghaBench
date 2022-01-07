; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_dma_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_dma_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i64, i32 }

@OMAP3_ISP_IOMEM_HIST = common dso_local global i32 0, align 4
@ISPHIST_CNT = common dso_local global i32 0, align 4
@ISPHIST_CNT_CLEAR = common dso_local global i32 0, align 4
@ISPSTAT_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hist_dma_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_dma_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ispstat*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ispstat*
  store %struct.ispstat* %5, %struct.ispstat** %3, align 8
  %6 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %7 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %10 = load i32, i32* @ISPHIST_CNT, align 4
  %11 = load i32, i32* @ISPHIST_CNT_CLEAR, align 4
  %12 = call i32 @isp_reg_clr(i32 %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %14 = call i32 @omap3isp_stat_dma_isr(%struct.ispstat* %13)
  %15 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %16 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ISPSTAT_DISABLED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %22 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @omap3isp_hist_dma_done(i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @isp_reg_clr(i32, i32, i32, i32) #1

declare dso_local i32 @omap3isp_stat_dma_isr(%struct.ispstat*) #1

declare dso_local i32 @omap3isp_hist_dma_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
