; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_wm_frame_based.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_wm_frame_based.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i32 }

@VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG_FRM_BASED_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i64, i64)* @vfe_wm_frame_based to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_wm_frame_based(%struct.vfe_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vfe_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.vfe_device* %0, %struct.vfe_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG(i64 %11)
  %13 = load i32, i32* @VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG_FRM_BASED_SHIFT, align 4
  %14 = shl i32 1, %13
  %15 = call i32 @vfe_reg_set(%struct.vfe_device* %10, i32 %12, i32 %14)
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG(i64 %18)
  %20 = load i32, i32* @VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG_FRM_BASED_SHIFT, align 4
  %21 = shl i32 1, %20
  %22 = call i32 @vfe_reg_clr(%struct.vfe_device* %17, i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %16, %9
  ret void
}

declare dso_local i32 @vfe_reg_set(%struct.vfe_device*, i32, i32) #1

declare dso_local i32 @VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG(i64) #1

declare dso_local i32 @vfe_reg_clr(%struct.vfe_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
