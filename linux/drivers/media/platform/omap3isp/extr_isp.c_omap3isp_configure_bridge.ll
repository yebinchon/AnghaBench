; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_omap3isp_configure_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_omap3isp_configure_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32 }
%struct.isp_parallel_cfg = type { i32, i32 }

@OMAP3_ISP_IOMEM_MAIN = common dso_local global i32 0, align 4
@ISP_CTRL = common dso_local global i32 0, align 4
@ISPCTRL_SHIFT_MASK = common dso_local global i32 0, align 4
@ISPCTRL_PAR_CLK_POL_INV = common dso_local global i32 0, align 4
@ISPCTRL_PAR_SER_CLK_SEL_MASK = common dso_local global i32 0, align 4
@ISPCTRL_PAR_BRIDGE_MASK = common dso_local global i32 0, align 4
@ISPCTRL_PAR_SER_CLK_SEL_PARALLEL = common dso_local global i32 0, align 4
@ISPCTRL_PAR_CLK_POL_SHIFT = common dso_local global i32 0, align 4
@ISPCTRL_PAR_SER_CLK_SEL_CSIA = common dso_local global i32 0, align 4
@ISPCTRL_PAR_SER_CLK_SEL_CSIB = common dso_local global i32 0, align 4
@ISPCTRL_PAR_SER_CLK_SEL_CSIC = common dso_local global i32 0, align 4
@ISPCTRL_SHIFT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_configure_bridge(%struct.isp_device* %0, i32 %1, %struct.isp_parallel_cfg* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.isp_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isp_parallel_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.isp_parallel_cfg* %2, %struct.isp_parallel_cfg** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %13 = load i32, i32* @OMAP3_ISP_IOMEM_MAIN, align 4
  %14 = load i32, i32* @ISP_CTRL, align 4
  %15 = call i32 @isp_reg_readl(%struct.isp_device* %12, i32 %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @ISPCTRL_SHIFT_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %11, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @ISPCTRL_PAR_CLK_POL_INV, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %11, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @ISPCTRL_PAR_SER_CLK_SEL_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @ISPCTRL_PAR_BRIDGE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %64 [
    i32 128, label %36
    i32 130, label %52
    i32 131, label %56
    i32 129, label %60
  ]

36:                                               ; preds = %5
  %37 = load i32, i32* @ISPCTRL_PAR_SER_CLK_SEL_PARALLEL, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %8, align 8
  %41 = getelementptr inbounds %struct.isp_parallel_cfg, %struct.isp_parallel_cfg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ISPCTRL_PAR_CLK_POL_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %8, align 8
  %48 = getelementptr inbounds %struct.isp_parallel_cfg, %struct.isp_parallel_cfg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %65

52:                                               ; preds = %5
  %53 = load i32, i32* @ISPCTRL_PAR_SER_CLK_SEL_CSIA, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %65

56:                                               ; preds = %5
  %57 = load i32, i32* @ISPCTRL_PAR_SER_CLK_SEL_CSIB, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %65

60:                                               ; preds = %5
  %61 = load i32, i32* @ISPCTRL_PAR_SER_CLK_SEL_CSIC, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %65

64:                                               ; preds = %5
  br label %79

65:                                               ; preds = %60, %56, %52, %36
  %66 = load i32, i32* %9, align 4
  %67 = udiv i32 %66, 2
  %68 = load i32, i32* @ISPCTRL_SHIFT_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* @ISPCTRL_SHIFT_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @OMAP3_ISP_IOMEM_MAIN, align 4
  %77 = load i32, i32* @ISP_CTRL, align 4
  %78 = call i32 @isp_reg_writel(%struct.isp_device* %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %65, %64
  ret void
}

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
