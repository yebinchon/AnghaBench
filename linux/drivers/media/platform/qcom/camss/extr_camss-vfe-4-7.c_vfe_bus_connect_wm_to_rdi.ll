; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_bus_connect_wm_to_rdi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_bus_connect_wm_to_rdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i32 }

@VFE_0_RDI_CFG_x_MIPI_EN_BITS = common dso_local global i32 0, align 4
@VFE_0_RDI_CFG_x_RDI_EN_BIT = common dso_local global i32 0, align 4
@VFE_0_RDI_CFG_x_RDI_STREAM_SEL_SHIFT = common dso_local global i32 0, align 4
@VFE_0_RDI_CFG_x_RDI_STREAM_SEL_MASK = common dso_local global i32 0, align 4
@VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI0 = common dso_local global i32 0, align 4
@VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT = common dso_local global i32 0, align 4
@VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI1 = common dso_local global i32 0, align 4
@VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i32, i32)* @vfe_bus_connect_wm_to_rdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_bus_connect_wm_to_rdi(%struct.vfe_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vfe_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @VFE_0_RDI_CFG_x_MIPI_EN_BITS, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %10 = call i32 @VFE_0_RDI_CFG_x(i32 0)
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @vfe_reg_set(%struct.vfe_device* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @VFE_0_RDI_CFG_x_RDI_EN_BIT, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul i32 3, %14
  %16 = load i32, i32* @VFE_0_RDI_CFG_x_RDI_STREAM_SEL_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* @VFE_0_RDI_CFG_x_RDI_STREAM_SEL_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @VFE_0_RDI_CFG_x(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @vfe_reg_set(%struct.vfe_device* %22, i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %29 [
    i32 130, label %28
    i32 129, label %33
    i32 128, label %37
  ]

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %3, %28
  %30 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI0, align 4
  %31 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %7, align 4
  br label %41

33:                                               ; preds = %3
  %34 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI1, align 4
  %35 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI2, align 4
  %39 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT, align 4
  %40 = shl i32 %38, %39
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %33, %29
  %42 = load i32, i32* %5, align 4
  %43 = srem i32 %42, 2
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 16
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @VFE_0_BUS_XBAR_CFG_x(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @vfe_reg_set(%struct.vfe_device* %49, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @vfe_reg_set(%struct.vfe_device*, i32, i32) #1

declare dso_local i32 @VFE_0_RDI_CFG_x(i32) #1

declare dso_local i32 @VFE_0_BUS_XBAR_CFG_x(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
