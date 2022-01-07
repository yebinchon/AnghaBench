; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_bus_connect_wm_to_rdi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_bus_connect_wm_to_rdi.c"
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
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @VFE_0_RDI_CFG_x_RDI_Mr_FRAME_BASED_EN(i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %7, align 4
  %13 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %14 = call i32 @VFE_0_RDI_CFG_x(i32 0)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @vfe_reg_set(%struct.vfe_device* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @VFE_0_RDI_CFG_x_RDI_EN_BIT, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = mul i32 3, %18
  %20 = load i32, i32* @VFE_0_RDI_CFG_x_RDI_STREAM_SEL_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* @VFE_0_RDI_CFG_x_RDI_STREAM_SEL_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @VFE_0_RDI_CFG_x(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @vfe_reg_set(%struct.vfe_device* %26, i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %33 [
    i32 130, label %32
    i32 129, label %37
    i32 128, label %41
  ]

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %3, %32
  %34 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI0, align 4
  %35 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %7, align 4
  br label %45

37:                                               ; preds = %3
  %38 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI1, align 4
  %39 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT, align 4
  %40 = shl i32 %38, %39
  store i32 %40, i32* %7, align 4
  br label %45

41:                                               ; preds = %3
  %42 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI2, align 4
  %43 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT, align 4
  %44 = shl i32 %42, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %37, %33
  %46 = load i32, i32* %5, align 4
  %47 = srem i32 %46, 2
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %50, 16
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @VFE_0_BUS_XBAR_CFG_x(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @vfe_reg_set(%struct.vfe_device* %53, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @VFE_0_RDI_CFG_x_RDI_Mr_FRAME_BASED_EN(i32) #1

declare dso_local i32 @vfe_reg_set(%struct.vfe_device*, i32, i32) #1

declare dso_local i32 @VFE_0_RDI_CFG_x(i32) #1

declare dso_local i32 @VFE_0_BUS_XBAR_CFG_x(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
