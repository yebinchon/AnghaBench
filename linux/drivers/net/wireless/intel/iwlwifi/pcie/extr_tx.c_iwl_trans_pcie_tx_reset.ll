; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_tx_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_tx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_trans_pcie = type { %struct.TYPE_6__, %struct.iwl_txq** }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_txq = type { i32, i64, i64 }

@FH_KW_MEM_ADDR_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_trans_pcie_tx_reset(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_txq*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %3, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @WARN_ON_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %82

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %68, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %18, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %17
  %28 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %28, i32 0, i32 1
  %30 = load %struct.iwl_txq**, %struct.iwl_txq*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %30, i64 %32
  %34 = load %struct.iwl_txq*, %struct.iwl_txq** %33, align 8
  store %struct.iwl_txq* %34, %struct.iwl_txq** %5, align 8
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %36 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %27
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @FH_MEM_CBBC_QUEUE(%struct.iwl_trans* %43, i32 %44)
  %46 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %47 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @iwl_write_direct64(%struct.iwl_trans* %42, i32 %45, i32 %48)
  br label %60

50:                                               ; preds = %27
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %52 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @FH_MEM_CBBC_QUEUE(%struct.iwl_trans* %52, i32 %53)
  %55 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %56 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 8
  %59 = call i32 @iwl_write_direct32(%struct.iwl_trans* %51, i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %50, %41
  %61 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @iwl_pcie_txq_unmap(%struct.iwl_trans* %61, i32 %62)
  %64 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %65 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %67 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %17

71:                                               ; preds = %17
  %72 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %73 = load i32, i32* @FH_KW_MEM_ADDR_REG, align 4
  %74 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 4
  %79 = call i32 @iwl_write_direct32(%struct.iwl_trans* %72, i32 %73, i32 %78)
  %80 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %81 = call i32 @iwl_pcie_tx_start(%struct.iwl_trans* %80, i32 0)
  br label %82

82:                                               ; preds = %71, %15
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_write_direct64(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @FH_MEM_CBBC_QUEUE(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_pcie_txq_unmap(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_pcie_tx_start(%struct.iwl_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
