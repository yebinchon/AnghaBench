; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_check_hw_rf_kill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_check_hw_rf_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i64 }

@STATUS_RFKILL_OPMODE = common dso_local global i32 0, align 4
@STATUS_RFKILL_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_check_hw_rf_kill(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %8 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %7)
  store %struct.iwl_trans_pcie* %8, %struct.iwl_trans_pcie** %3, align 8
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %10 = call i32 @iwl_is_rfkill_set(%struct.iwl_trans* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @STATUS_RFKILL_HW, align 4
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 0
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %23, i32 0, i32 0
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  br label %41

26:                                               ; preds = %1
  %27 = load i32, i32* @STATUS_RFKILL_HW, align 4
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %29 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %28, i32 0, i32 0
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %38 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %37, i32 0, i32 0
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %26
  br label %41

41:                                               ; preds = %40, %17
  %42 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %44 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %43, i32 0, i32 0
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @iwl_trans_pcie_rf_kill(%struct.iwl_trans* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_is_rfkill_set(%struct.iwl_trans*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_trans_pcie_rf_kill(%struct.iwl_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
