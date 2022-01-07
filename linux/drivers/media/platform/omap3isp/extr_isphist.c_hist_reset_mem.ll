; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_reset_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_reset_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32, %struct.omap3isp_hist_config*, %struct.isp_device* }
%struct.omap3isp_hist_config = type { i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_HIST = common dso_local global i32 0, align 4
@ISPHIST_ADDR = common dso_local global i32 0, align 4
@ISPHIST_CNT = common dso_local global i32 0, align 4
@ISPHIST_CNT_CLEAR = common dso_local global i32 0, align 4
@OMAP3ISP_HIST_MEM_SIZE = common dso_local global i32 0, align 4
@ISPHIST_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*)* @hist_reset_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_reset_mem(%struct.ispstat* %0) #0 {
  %2 = alloca %struct.ispstat*, align 8
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.omap3isp_hist_config*, align 8
  %5 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %2, align 8
  %6 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %7 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %6, i32 0, i32 2
  %8 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  store %struct.isp_device* %8, %struct.isp_device** %3, align 8
  %9 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %10 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %9, i32 0, i32 1
  %11 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %10, align 8
  store %struct.omap3isp_hist_config* %11, %struct.omap3isp_hist_config** %4, align 8
  %12 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %13 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %14 = load i32, i32* @ISPHIST_ADDR, align 4
  %15 = call i32 @isp_reg_writel(%struct.isp_device* %12, i32 0, i32 %13, i32 %14)
  %16 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %17 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %18 = load i32, i32* @ISPHIST_CNT, align 4
  %19 = load i32, i32* @ISPHIST_CNT_CLEAR, align 4
  %20 = call i32 @isp_reg_set(%struct.isp_device* %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @OMAP3ISP_HIST_MEM_SIZE, align 4
  %22 = sdiv i32 %21, 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %43, %1
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %28 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %29 = load i32, i32* @ISPHIST_DATA, align 4
  %30 = call i32 @isp_reg_readl(%struct.isp_device* %27, i32 %28, i32 %29)
  %31 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %32 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %33 = load i32, i32* @ISPHIST_DATA, align 4
  %34 = call i32 @isp_reg_readl(%struct.isp_device* %31, i32 %32, i32 %33)
  %35 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %36 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %37 = load i32, i32* @ISPHIST_DATA, align 4
  %38 = call i32 @isp_reg_readl(%struct.isp_device* %35, i32 %36, i32 %37)
  %39 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %40 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %41 = load i32, i32* @ISPHIST_DATA, align 4
  %42 = call i32 @isp_reg_readl(%struct.isp_device* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %5, align 4
  br label %23

46:                                               ; preds = %23
  %47 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %48 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %49 = load i32, i32* @ISPHIST_CNT, align 4
  %50 = load i32, i32* @ISPHIST_CNT_CLEAR, align 4
  %51 = call i32 @isp_reg_clr(%struct.isp_device* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %4, align 8
  %53 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %56 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  ret void
}

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @isp_reg_clr(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
