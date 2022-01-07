; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_xclk_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_xclk_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_xclk = type { i32, i32 }

@OMAP3_ISP_IOMEM_MAIN = common dso_local global i32 0, align 4
@ISP_TCTRL_CTRL = common dso_local global i32 0, align 4
@ISPTCTRL_CTRL_DIVA_MASK = common dso_local global i32 0, align 4
@ISPTCTRL_CTRL_DIVA_SHIFT = common dso_local global i32 0, align 4
@ISPTCTRL_CTRL_DIVB_MASK = common dso_local global i32 0, align 4
@ISPTCTRL_CTRL_DIVB_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_xclk*, i32)* @isp_xclk_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_xclk_update(%struct.isp_xclk* %0, i32 %1) #0 {
  %3 = alloca %struct.isp_xclk*, align 8
  %4 = alloca i32, align 4
  store %struct.isp_xclk* %0, %struct.isp_xclk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.isp_xclk*, %struct.isp_xclk** %3, align 8
  %6 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %30 [
    i32 129, label %8
    i32 128, label %19
  ]

8:                                                ; preds = %2
  %9 = load %struct.isp_xclk*, %struct.isp_xclk** %3, align 8
  %10 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OMAP3_ISP_IOMEM_MAIN, align 4
  %13 = load i32, i32* @ISP_TCTRL_CTRL, align 4
  %14 = load i32, i32* @ISPTCTRL_CTRL_DIVA_MASK, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ISPTCTRL_CTRL_DIVA_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = call i32 @isp_reg_clr_set(i32 %11, i32 %12, i32 %13, i32 %14, i32 %17)
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.isp_xclk*, %struct.isp_xclk** %3, align 8
  %21 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @OMAP3_ISP_IOMEM_MAIN, align 4
  %24 = load i32, i32* @ISP_TCTRL_CTRL, align 4
  %25 = load i32, i32* @ISPTCTRL_CTRL_DIVB_MASK, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ISPTCTRL_CTRL_DIVB_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = call i32 @isp_reg_clr_set(i32 %22, i32 %23, i32 %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %2, %19, %8
  ret void
}

declare dso_local i32 @isp_reg_clr_set(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
