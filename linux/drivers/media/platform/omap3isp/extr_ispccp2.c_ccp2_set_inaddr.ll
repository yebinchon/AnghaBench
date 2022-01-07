; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_set_inaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_set_inaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_CCP2 = common dso_local global i32 0, align 4
@ISPCCP2_LCM_SRC_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccp2_device*, i32)* @ccp2_set_inaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp2_set_inaddr(%struct.isp_ccp2_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isp_ccp2_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp_device*, align 8
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %7 = call %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device* %6)
  store %struct.isp_device* %7, %struct.isp_device** %5, align 8
  %8 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %11 = load i32, i32* @ISPCCP2_LCM_SRC_ADDR, align 4
  %12 = call i32 @isp_reg_writel(%struct.isp_device* %8, i32 %9, i32 %10, i32 %11)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
