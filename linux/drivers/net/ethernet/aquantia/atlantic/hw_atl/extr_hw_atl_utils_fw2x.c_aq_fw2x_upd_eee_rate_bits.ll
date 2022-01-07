; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_upd_eee_rate_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_upd_eee_rate_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HW_ATL_FW2X_CAP_EEE_1G_MASK = common dso_local global i32 0, align 4
@HW_ATL_FW2X_CAP_EEE_2G5_MASK = common dso_local global i32 0, align 4
@HW_ATL_FW2X_CAP_EEE_5G_MASK = common dso_local global i32 0, align 4
@HW_ATL_FW2X_CAP_EEE_10G_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aq_hw_s*, i32*, i32)* @aq_fw2x_upd_eee_rate_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aq_fw2x_upd_eee_rate_bits(%struct.aq_hw_s* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.aq_hw_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @HW_ATL_FW2X_CAP_EEE_1G_MASK, align 4
  %8 = load i32, i32* @HW_ATL_FW2X_CAP_EEE_2G5_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @HW_ATL_FW2X_CAP_EEE_5G_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @HW_ATL_FW2X_CAP_EEE_10G_MASK, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @eee_mask_to_fw2x(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  ret void
}

declare dso_local i32 @eee_mask_to_fw2x(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
