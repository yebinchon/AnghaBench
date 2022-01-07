; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_disable_l0s_l1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_disable_l0s_l1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32 }

@ATL1C_ASPM_L0S_SUPPORT = common dso_local global i32 0, align 4
@ATL1C_ASPM_L1_SUPPORT = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_hw*)* @atl1c_disable_l0s_l1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_disable_l0s_l1(%struct.atl1c_hw* %0) #0 {
  %2 = alloca %struct.atl1c_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %2, align 8
  %4 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %5 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @ATL1C_ASPM_L0S_SUPPORT, align 4
  %8 = load i32, i32* @ATL1C_ASPM_L1_SUPPORT, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %12 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %16 = load i32, i32* @SPEED_0, align 4
  %17 = call i32 @atl1c_set_aspm(%struct.atl1c_hw* %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %20 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @atl1c_set_aspm(%struct.atl1c_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
