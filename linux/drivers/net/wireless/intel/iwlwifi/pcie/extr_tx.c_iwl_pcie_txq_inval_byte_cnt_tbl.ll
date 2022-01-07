; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_inval_byte_cnt_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_inval_byte_cnt_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.iwl_trans_pcie = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.iwlagn_scd_bc_tbl* }
%struct.iwlagn_scd_bc_tbl = type { i8** }
%struct.iwl_tx_cmd = type { i32 }

@TFD_QUEUE_SIZE_MAX = common dso_local global i32 0, align 4
@TFD_QUEUE_SIZE_BC_DUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_txq*)* @iwl_pcie_txq_inval_byte_cnt_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_inval_byte_cnt_tbl(%struct.iwl_trans* %0, %struct.iwl_txq* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_txq*, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca %struct.iwlagn_scd_bc_tbl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iwl_tx_cmd*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %4, align 8
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %13 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %12)
  store %struct.iwl_trans_pcie* %13, %struct.iwl_trans_pcie** %5, align 8
  %14 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %16, align 8
  store %struct.iwlagn_scd_bc_tbl* %17, %struct.iwlagn_scd_bc_tbl** %6, align 8
  %18 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.iwl_tx_cmd*
  store %struct.iwl_tx_cmd* %35, %struct.iwl_tx_cmd** %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %38 = icmp sge i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %43 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %2
  %47 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %11, align 8
  %48 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %2
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 12
  %53 = or i32 1, %52
  %54 = call i8* @cpu_to_le16(i32 %53)
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %56, i64 %58
  %60 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %55, i8** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @TFD_QUEUE_SIZE_BC_DUP, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %50
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %70, i64 %72
  %74 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %75, i64 %79
  store i8* %69, i8** %80, align 8
  br label %81

81:                                               ; preds = %68, %50
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
