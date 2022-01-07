; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_bus_disconnect_wm_from_rdi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_bus_disconnect_wm_from_rdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i32 }

@VFE_0_RDI_CFG_x_RDI_EN_BIT = common dso_local global i32 0, align 4
@VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI0 = common dso_local global i32 0, align 4
@VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT = common dso_local global i32 0, align 4
@VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI1 = common dso_local global i32 0, align 4
@VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i32, i32)* @vfe_bus_disconnect_wm_from_rdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_bus_disconnect_wm_from_rdi(%struct.vfe_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vfe_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @VFE_0_RDI_CFG_x_RDI_Mr_FRAME_BASED_EN(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %11 = call i32 @VFE_0_RDI_CFG_x(i32 0)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @vfe_reg_clr(%struct.vfe_device* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @VFE_0_RDI_CFG_x_RDI_EN_BIT, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @VFE_0_RDI_CFG_x(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @vfe_reg_clr(%struct.vfe_device* %15, i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %22 [
    i32 130, label %21
    i32 129, label %26
    i32 128, label %30
  ]

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %3, %21
  %23 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI0, align 4
  %24 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT, align 4
  %25 = shl i32 %23, %24
  store i32 %25, i32* %7, align 4
  br label %34

26:                                               ; preds = %3
  %27 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI1, align 4
  %28 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT, align 4
  %29 = shl i32 %27, %28
  store i32 %29, i32* %7, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI2, align 4
  %32 = load i32, i32* @VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %26, %22
  %35 = load i32, i32* %5, align 4
  %36 = srem i32 %35, 2
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, 16
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @VFE_0_BUS_XBAR_CFG_x(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @vfe_reg_clr(%struct.vfe_device* %42, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @VFE_0_RDI_CFG_x_RDI_Mr_FRAME_BASED_EN(i32) #1

declare dso_local i32 @vfe_reg_clr(%struct.vfe_device*, i32, i32) #1

declare dso_local i32 @VFE_0_RDI_CFG_x(i32) #1

declare dso_local i32 @VFE_0_BUS_XBAR_CFG_x(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
