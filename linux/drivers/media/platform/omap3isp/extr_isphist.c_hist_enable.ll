; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32 }

@OMAP3_ISP_IOMEM_HIST = common dso_local global i32 0, align 4
@ISPHIST_PCR = common dso_local global i32 0, align 4
@ISPHIST_PCR_ENABLE = common dso_local global i32 0, align 4
@OMAP3_ISP_SUBCLK_HIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*, i32)* @hist_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_enable(%struct.ispstat* %0, i32 %1) #0 {
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %9 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %12 = load i32, i32* @ISPHIST_PCR, align 4
  %13 = load i32, i32* @ISPHIST_PCR_ENABLE, align 4
  %14 = call i32 @isp_reg_set(i32 %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %16 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OMAP3_ISP_SUBCLK_HIST, align 4
  %19 = call i32 @omap3isp_subclk_enable(i32 %17, i32 %18)
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %22 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %25 = load i32, i32* @ISPHIST_PCR, align 4
  %26 = load i32, i32* @ISPHIST_PCR_ENABLE, align 4
  %27 = call i32 @isp_reg_clr(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %29 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OMAP3_ISP_SUBCLK_HIST, align 4
  %32 = call i32 @omap3isp_subclk_disable(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %20, %7
  ret void
}

declare dso_local i32 @isp_reg_set(i32, i32, i32, i32) #1

declare dso_local i32 @omap3isp_subclk_enable(i32, i32) #1

declare dso_local i32 @isp_reg_clr(i32, i32, i32, i32) #1

declare dso_local i32 @omap3isp_subclk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
