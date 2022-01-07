; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_update_byte_cnt_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_update_byte_cnt_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.iwlagn_scd_bc_tbl = type { i8** }
%struct.iwl_trans_pcie = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.iwlagn_scd_bc_tbl* }
%struct.iwl_tx_cmd = type { i32, i32 }

@IWL_TX_CRC_SIZE = common dso_local global i32 0, align 4
@IWL_TX_DELIMITER_SIZE = common dso_local global i32 0, align 4
@TX_CMD_SEC_MSK = common dso_local global i32 0, align 4
@IEEE80211_CCMP_MIC_LEN = common dso_local global i32 0, align 4
@IEEE80211_TKIP_ICV_LEN = common dso_local global i32 0, align 4
@IEEE80211_WEP_IV_LEN = common dso_local global i32 0, align 4
@IEEE80211_WEP_ICV_LEN = common dso_local global i32 0, align 4
@TFD_QUEUE_SIZE_MAX = common dso_local global i32 0, align 4
@TFD_QUEUE_SIZE_BC_DUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_txq*, i32, i32)* @iwl_pcie_txq_update_byte_cnt_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_update_byte_cnt_tbl(%struct.iwl_trans* %0, %struct.iwl_txq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.iwl_txq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwlagn_scd_bc_tbl*, align 8
  %10 = alloca %struct.iwl_trans_pcie*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.iwl_tx_cmd*, align 8
  %17 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %19 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %18)
  store %struct.iwl_trans_pcie* %19, %struct.iwl_trans_pcie** %10, align 8
  %20 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %24 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IWL_TX_CRC_SIZE, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @IWL_TX_DELIMITER_SIZE, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %14, align 4
  %31 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %32 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = bitcast i8* %43 to %struct.iwl_tx_cmd*
  store %struct.iwl_tx_cmd* %44, %struct.iwl_tx_cmd** %16, align 8
  %45 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %16, align 8
  %46 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %17, align 4
  %48 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %49 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %50, align 8
  store %struct.iwlagn_scd_bc_tbl* %51, %struct.iwlagn_scd_bc_tbl** %9, align 8
  %52 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %16, align 8
  %53 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @TX_CMD_SEC_MSK, align 4
  %57 = and i32 %55, %56
  switch i32 %57, label %72 [
    i32 130, label %58
    i32 129, label %62
    i32 128, label %66
  ]

58:                                               ; preds = %4
  %59 = load i32, i32* @IEEE80211_CCMP_MIC_LEN, align 4
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %14, align 4
  br label %72

62:                                               ; preds = %4
  %63 = load i32, i32* @IEEE80211_TKIP_ICV_LEN, align 4
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %14, align 4
  br label %72

66:                                               ; preds = %4
  %67 = load i32, i32* @IEEE80211_WEP_IV_LEN, align 4
  %68 = load i32, i32* @IEEE80211_WEP_ICV_LEN, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %4, %66, %62, %58
  %73 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %74 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @DIV_ROUND_UP(i32 %78, i32 4)
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %14, align 4
  %82 = icmp sgt i32 %81, 4095
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %86 = icmp sge i32 %84, %85
  br label %87

87:                                               ; preds = %83, %80
  %88 = phi i1 [ true, %80 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  %90 = call i64 @WARN_ON(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %125

93:                                               ; preds = %87
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %17, align 4
  %96 = shl i32 %95, 12
  %97 = or i32 %94, %96
  %98 = call i8* @cpu_to_le16(i32 %97)
  store i8* %98, i8** %15, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %9, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %100, i64 %102
  %104 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %99, i8** %108, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @TFD_QUEUE_SIZE_BC_DUP, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %93
  %113 = load i8*, i8** %15, align 8
  %114 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %9, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %114, i64 %116
  %118 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %117, i32 0, i32 0
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %119, i64 %123
  store i8* %113, i8** %124, align 8
  br label %125

125:                                              ; preds = %92, %112, %93
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
