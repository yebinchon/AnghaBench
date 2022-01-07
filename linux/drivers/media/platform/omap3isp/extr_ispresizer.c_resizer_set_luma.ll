; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_luma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_luma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i32 }
%struct.resizer_luma_yenh = type { i32, i32, i32, i32 }
%struct.isp_device = type { i32 }

@ISPRSZ_YENH_ALGO_SHIFT = common dso_local global i32 0, align 4
@ISPRSZ_YENH_ALGO_MASK = common dso_local global i32 0, align 4
@ISPRSZ_YENH_GAIN_SHIFT = common dso_local global i32 0, align 4
@ISPRSZ_YENH_GAIN_MASK = common dso_local global i32 0, align 4
@ISPRSZ_YENH_SLOP_SHIFT = common dso_local global i32 0, align 4
@ISPRSZ_YENH_SLOP_MASK = common dso_local global i32 0, align 4
@ISPRSZ_YENH_CORE_SHIFT = common dso_local global i32 0, align 4
@ISPRSZ_YENH_CORE_MASK = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_RESZ = common dso_local global i32 0, align 4
@ISPRSZ_YENH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_res_device*, %struct.resizer_luma_yenh*)* @resizer_set_luma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_set_luma(%struct.isp_res_device* %0, %struct.resizer_luma_yenh* %1) #0 {
  %3 = alloca %struct.isp_res_device*, align 8
  %4 = alloca %struct.resizer_luma_yenh*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca i32, align 4
  store %struct.isp_res_device* %0, %struct.isp_res_device** %3, align 8
  store %struct.resizer_luma_yenh* %1, %struct.resizer_luma_yenh** %4, align 8
  %7 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %8 = call %struct.isp_device* @to_isp_device(%struct.isp_res_device* %7)
  store %struct.isp_device* %8, %struct.isp_device** %5, align 8
  %9 = load %struct.resizer_luma_yenh*, %struct.resizer_luma_yenh** %4, align 8
  %10 = getelementptr inbounds %struct.resizer_luma_yenh, %struct.resizer_luma_yenh* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ISPRSZ_YENH_ALGO_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* @ISPRSZ_YENH_ALGO_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.resizer_luma_yenh*, %struct.resizer_luma_yenh** %4, align 8
  %17 = getelementptr inbounds %struct.resizer_luma_yenh, %struct.resizer_luma_yenh* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ISPRSZ_YENH_GAIN_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* @ISPRSZ_YENH_GAIN_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.resizer_luma_yenh*, %struct.resizer_luma_yenh** %4, align 8
  %26 = getelementptr inbounds %struct.resizer_luma_yenh, %struct.resizer_luma_yenh* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ISPRSZ_YENH_SLOP_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @ISPRSZ_YENH_SLOP_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.resizer_luma_yenh*, %struct.resizer_luma_yenh** %4, align 8
  %35 = getelementptr inbounds %struct.resizer_luma_yenh, %struct.resizer_luma_yenh* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ISPRSZ_YENH_CORE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* @ISPRSZ_YENH_CORE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @OMAP3_ISP_IOMEM_RESZ, align 4
  %46 = load i32, i32* @ISPRSZ_YENH, align 4
  %47 = call i32 @isp_reg_writel(%struct.isp_device* %43, i32 %44, i32 %45, i32 %46)
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
