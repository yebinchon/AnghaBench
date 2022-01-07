; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_buf_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_buf_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32, %struct.isp_device*, %struct.TYPE_2__* }
%struct.isp_device = type { i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"hist: invalid PIO buffer address\0A\00", align 1
@STAT_NO_BUF = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_HIST = common dso_local global i32 0, align 4
@ISPHIST_ADDR = common dso_local global i32 0, align 4
@ISPHIST_CNT = common dso_local global i32 0, align 4
@ISPHIST_CNT_CLEAR = common dso_local global i32 0, align 4
@ISPHIST_DATA = common dso_local global i32 0, align 4
@STAT_BUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispstat*)* @hist_buf_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_buf_pio(%struct.ispstat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca %struct.isp_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  %7 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %8 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %7, i32 0, i32 1
  %9 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  store %struct.isp_device* %9, %struct.isp_device** %4, align 8
  %10 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %11 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %19 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %23 = call i32 @hist_reset_mem(%struct.ispstat* %22)
  %24 = load i32, i32* @STAT_NO_BUF, align 4
  store i32 %24, i32* %2, align 4
  br label %83

25:                                               ; preds = %1
  %26 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %27 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %28 = load i32, i32* @ISPHIST_ADDR, align 4
  %29 = call i32 @isp_reg_writel(%struct.isp_device* %26, i32 0, i32 %27, i32 %28)
  %30 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %31 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %32 = load i32, i32* @ISPHIST_CNT, align 4
  %33 = load i32, i32* @ISPHIST_CNT_CLEAR, align 4
  %34 = call i32 @isp_reg_set(%struct.isp_device* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %36 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %37, 16
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %71, %25
  %40 = load i32, i32* %6, align 4
  %41 = icmp ugt i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %39
  %43 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %44 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %45 = load i32, i32* @ISPHIST_DATA, align 4
  %46 = call i8* @isp_reg_readl(%struct.isp_device* %43, i32 %44, i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %50 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %51 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %52 = load i32, i32* @ISPHIST_DATA, align 4
  %53 = call i8* @isp_reg_readl(%struct.isp_device* %50, i32 %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %57 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %58 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %59 = load i32, i32* @ISPHIST_DATA, align 4
  %60 = call i8* @isp_reg_readl(%struct.isp_device* %57, i32 %58, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  %64 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %65 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %66 = load i32, i32* @ISPHIST_DATA, align 4
  %67 = call i8* @isp_reg_readl(%struct.isp_device* %64, i32 %65, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  br label %71

71:                                               ; preds = %42
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %6, align 4
  br label %39

74:                                               ; preds = %39
  %75 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %76 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %75, i32 0, i32 1
  %77 = load %struct.isp_device*, %struct.isp_device** %76, align 8
  %78 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %79 = load i32, i32* @ISPHIST_CNT, align 4
  %80 = load i32, i32* @ISPHIST_CNT_CLEAR, align 4
  %81 = call i32 @isp_reg_clr(%struct.isp_device* %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* @STAT_BUF_DONE, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %74, %17
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @hist_reset_mem(%struct.ispstat*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i8* @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @isp_reg_clr(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
