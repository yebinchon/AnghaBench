; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_init_swfw_sync_X540.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_init_swfw_sync_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY0_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY1_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_SW_MNG_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_I2C_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_init_swfw_sync_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = call i32 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw* %4)
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %6)
  %8 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %9 = load i32, i32* @IXGBE_GSSR_PHY0_SM, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @IXGBE_GSSR_PHY1_SM, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IXGBE_GSSR_I2C_MASK, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ixgbe_acquire_swfw_sync_X540(%struct.ixgbe_hw* %19, i32 %20)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ixgbe_release_swfw_sync_X540(%struct.ixgbe_hw* %22, i32 %23)
  ret void
}

declare dso_local i32 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_acquire_swfw_sync_X540(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_release_swfw_sync_X540(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
