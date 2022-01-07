; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_RESZ = common dso_local global i32 0, align 4
@ISPRSZ_CNT = common dso_local global i32 0, align 4
@ISPRSZ_CNT_HSTPH_MASK = common dso_local global i32 0, align 4
@ISPRSZ_CNT_VSTPH_MASK = common dso_local global i32 0, align 4
@ISPRSZ_CNT_HSTPH_SHIFT = common dso_local global i32 0, align 4
@ISPRSZ_CNT_VSTPH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_res_device*, i32, i32)* @resizer_set_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_set_phase(%struct.isp_res_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.isp_res_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isp_device*, align 8
  %8 = alloca i32, align 4
  store %struct.isp_res_device* %0, %struct.isp_res_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %10 = call %struct.isp_device* @to_isp_device(%struct.isp_res_device* %9)
  store %struct.isp_device* %10, %struct.isp_device** %7, align 8
  %11 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %12 = load i32, i32* @OMAP3_ISP_IOMEM_RESZ, align 4
  %13 = load i32, i32* @ISPRSZ_CNT, align 4
  %14 = call i32 @isp_reg_readl(%struct.isp_device* %11, i32 %12, i32 %13)
  %15 = load i32, i32* @ISPRSZ_CNT_HSTPH_MASK, align 4
  %16 = load i32, i32* @ISPRSZ_CNT_VSTPH_MASK, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ISPRSZ_CNT_HSTPH_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @ISPRSZ_CNT_HSTPH_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ISPRSZ_CNT_VSTPH_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @ISPRSZ_CNT_VSTPH_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @OMAP3_ISP_IOMEM_RESZ, align 4
  %37 = load i32, i32* @ISPRSZ_CNT, align 4
  %38 = call i32 @isp_reg_writel(%struct.isp_device* %34, i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_res_device*) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
