; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_reset_ict.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_reset_ict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32, i32, i64, i32 }

@ICT_SIZE = common dso_local global i32 0, align 4
@ICT_SHIFT = common dso_local global i32 0, align 4
@CSR_DRAM_INT_TBL_ENABLE = common dso_local global i32 0, align 4
@CSR_DRAM_INIT_TBL_WRAP_CHECK = common dso_local global i32 0, align 4
@CSR_DRAM_INIT_TBL_WRITE_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CSR_DRAM_INT_TBL_REG =0x%x\0A\00", align 1
@CSR_DRAM_INT_TBL_REG = common dso_local global i32 0, align 4
@CSR_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_reset_ict(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %6 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %5)
  store %struct.iwl_trans_pcie* %6, %struct.iwl_trans_pcie** %3, align 8
  %7 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %13, i32 0, i32 3
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %17 = call i32 @_iwl_disable_interrupts(%struct.iwl_trans* %16)
  %18 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ICT_SIZE, align 4
  %22 = call i32 @memset(i32 %20, i32 0, i32 %21)
  %23 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ICT_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @CSR_DRAM_INT_TBL_ENABLE, align 4
  %29 = load i32, i32* @CSR_DRAM_INIT_TBL_WRAP_CHECK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CSR_DRAM_INIT_TBL_WRITE_POINTER, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @IWL_DEBUG_ISR(%struct.iwl_trans* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %39 = load i32, i32* @CSR_DRAM_INT_TBL_REG, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @iwl_write32(%struct.iwl_trans* %38, i32 %39, i32 %40)
  %42 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %45 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %47 = load i32, i32* @CSR_INT, align 4
  %48 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %49 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @iwl_write32(%struct.iwl_trans* %46, i32 %47, i32 %50)
  %52 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %53 = call i32 @_iwl_enable_interrupts(%struct.iwl_trans* %52)
  %54 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %55 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %54, i32 0, i32 3
  %56 = call i32 @spin_unlock(i32* %55)
  br label %57

57:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @_iwl_enable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
