; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_conf_msix_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_conf_msix_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans_pcie = type { i32, %struct.iwl_trans* }
%struct.iwl_trans = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4
@UREG_CHICK = common dso_local global i32 0, align 4
@UREG_CHICK_MSI_ENABLE = common dso_local global i32 0, align 4
@UREG_CHICK_MSIX_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_conf_msix_hw(%struct.iwl_trans_pcie* %0) #0 {
  %2 = alloca %struct.iwl_trans_pcie*, align 8
  %3 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_trans_pcie* %0, %struct.iwl_trans_pcie** %2, align 8
  %4 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %4, i32 0, i32 1
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  store %struct.iwl_trans* %6, %struct.iwl_trans** %3, align 8
  %7 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %26 = load i32, i32* @UREG_CHICK, align 4
  %27 = load i32, i32* @UREG_CHICK_MSI_ENABLE, align 4
  %28 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %18, %11
  br label %46

30:                                               ; preds = %1
  %31 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %38 = load i32, i32* @UREG_CHICK, align 4
  %39 = load i32, i32* @UREG_CHICK_MSIX_ENABLE, align 4
  %40 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %43 = call i32 @iwl_pcie_map_rx_causes(%struct.iwl_trans* %42)
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %45 = call i32 @iwl_pcie_map_non_rx_causes(%struct.iwl_trans* %44)
  br label %46

46:                                               ; preds = %41, %29
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_write_umac_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_pcie_map_rx_causes(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_map_non_rx_causes(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
