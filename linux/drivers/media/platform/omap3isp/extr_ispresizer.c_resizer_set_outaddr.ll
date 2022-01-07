; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_outaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_outaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i32 }
%struct.isp_device = type { i32 }

@ISPRSZ_SDR_OUTADD_ADDR_SHIFT = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_RESZ = common dso_local global i32 0, align 4
@ISPRSZ_SDR_OUTADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_res_device*, i32)* @resizer_set_outaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_set_outaddr(%struct.isp_res_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isp_res_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp_device*, align 8
  store %struct.isp_res_device* %0, %struct.isp_res_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %7 = call %struct.isp_device* @to_isp_device(%struct.isp_res_device* %6)
  store %struct.isp_device* %7, %struct.isp_device** %5, align 8
  %8 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ISPRSZ_SDR_OUTADD_ADDR_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* @OMAP3_ISP_IOMEM_RESZ, align 4
  %13 = load i32, i32* @ISPRSZ_SDR_OUTADD, align 4
  %14 = call i32 @isp_reg_writel(%struct.isp_device* %8, i32 %11, i32 %12, i32 %13)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_res_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
