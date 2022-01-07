; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_inc_wr_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_inc_wr_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_txq = type { i32, i32, i32, i32, i32 }
%struct.iwl_trans_pcie = type { i32 }

@STATUS_TPOWER_PMI = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1 = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Tx queue %d requesting wakeup, GP1 = 0x%x\0A\00", align 1
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Q:%d WR: 0x%x\0A\00", align 1
@HBUS_TARG_WRPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_txq*)* @iwl_pcie_txq_inc_wr_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_inc_wr_ptr(%struct.iwl_trans* %0, %struct.iwl_txq* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_txq*, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %4, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %13, i32 0, i32 4
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %63, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = load i32, i32* @STATUS_TPOWER_PMI, align 4
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %38 = load i32, i32* @CSR_UCODE_DRV_GP1, align 4
  %39 = call i32 @iwl_read32(%struct.iwl_trans* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %50 = load i32, i32* @CSR_GP_CNTRL, align 4
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %52 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = call i32 @iwl_set_bit(%struct.iwl_trans* %49, i32 %50, i32 %58)
  %60 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %84

62:                                               ; preds = %36
  br label %63

63:                                               ; preds = %62, %30, %24, %2
  %64 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %67 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IWL_DEBUG_TX(%struct.iwl_trans* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %71 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %63
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %76 = load i32, i32* @HBUS_TARG_WRPTR, align 4
  %77 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %78 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = shl i32 %80, 8
  %82 = or i32 %79, %81
  %83 = call i32 @iwl_write32(%struct.iwl_trans* %75, i32 %76, i32 %82)
  br label %84

84:                                               ; preds = %44, %74, %63
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i32, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_trans*, i8*, i32, i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
