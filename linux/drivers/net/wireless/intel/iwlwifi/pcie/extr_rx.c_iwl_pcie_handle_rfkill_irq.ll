; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_handle_rfkill_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_handle_rfkill_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i64, i32, i32, %struct.isr_statistics }
%struct.isr_statistics = type { i32 }

@STATUS_RFKILL_OPMODE = common dso_local global i32 0, align 4
@STATUS_RFKILL_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RF_KILL bit toggled to %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"disable radio\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"enable radio\00", align 1
@STATUS_SYNC_HCMD_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Rfkill while SYNC HCMD in flight\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_handle_rfkill_irq(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca %struct.isr_statistics*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %3, align 8
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 3
  store %struct.isr_statistics* %11, %struct.isr_statistics** %4, align 8
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %20 = call i32 @iwl_is_rfkill_set(%struct.iwl_trans* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %26 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %25, i32 0, i32 0
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  %28 = load i32, i32* @STATUS_RFKILL_HW, align 4
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %30 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %23, %1
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %7, align 4
  br label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %41 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %42 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %41, i32 0, i32 0
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %39, %37
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 @IWL_WARN(%struct.iwl_trans* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load %struct.isr_statistics*, %struct.isr_statistics** %4, align 8
  %52 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @iwl_trans_pcie_rf_kill(%struct.iwl_trans* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %44
  %63 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %64 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %63, i32 0, i32 2
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %70 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %71 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %70, i32 0, i32 0
  %72 = call i64 @test_and_clear_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %76 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %79 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %78, i32 0, i32 1
  %80 = call i32 @wake_up(i32* %79)
  br label %96

81:                                               ; preds = %62
  %82 = load i32, i32* @STATUS_RFKILL_HW, align 4
  %83 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %84 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %83, i32 0, i32 0
  %85 = call i32 @clear_bit(i32 %82, i32* %84)
  %86 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %87 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %92 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %93 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %92, i32 0, i32 0
  %94 = call i32 @clear_bit(i32 %91, i32* %93)
  br label %95

95:                                               ; preds = %90, %81
  br label %96

96:                                               ; preds = %95, %77
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_is_rfkill_set(%struct.iwl_trans*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*, i8*) #1

declare dso_local i32 @iwl_trans_pcie_rf_kill(%struct.iwl_trans*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
