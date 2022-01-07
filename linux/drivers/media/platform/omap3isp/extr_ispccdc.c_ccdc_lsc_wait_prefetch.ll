; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_wait_prefetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_wait_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32 }
%struct.isp_device = type { i32 }

@IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_MAIN = common dso_local global i32 0, align 4
@ISP_IRQ0STATUS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccdc_device*)* @ccdc_lsc_wait_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_lsc_wait_prefetch(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_ccdc_device*, align 8
  %4 = alloca %struct.isp_device*, align 8
  %5 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %3, align 8
  %6 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %7 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %6)
  store %struct.isp_device* %7, %struct.isp_device** %4, align 8
  %8 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %9 = load i32, i32* @IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ, align 4
  %10 = load i32, i32* @OMAP3_ISP_IOMEM_MAIN, align 4
  %11 = load i32, i32* @ISP_IRQ0STATUS, align 4
  %12 = call i32 @isp_reg_writel(%struct.isp_device* %8, i32 %9, i32 %10, i32 %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %33, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %14, 1000
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %18 = load i32, i32* @OMAP3_ISP_IOMEM_MAIN, align 4
  %19 = load i32, i32* @ISP_IRQ0STATUS, align 4
  %20 = call i32 @isp_reg_readl(%struct.isp_device* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %26 = load i32, i32* @IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ, align 4
  %27 = load i32, i32* @OMAP3_ISP_IOMEM_MAIN, align 4
  %28 = load i32, i32* @ISP_IRQ0STATUS, align 4
  %29 = call i32 @isp_reg_writel(%struct.isp_device* %25, i32 %26, i32 %27, i32 %28)
  store i32 0, i32* %2, align 4
  br label %39

30:                                               ; preds = %16
  %31 = call i32 (...) @rmb()
  %32 = call i32 @udelay(i32 1)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %24
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
