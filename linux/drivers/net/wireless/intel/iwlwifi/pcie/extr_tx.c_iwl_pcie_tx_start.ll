; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.iwl_trans_pcie = type { i64, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SCD_CONTEXT_MEM_LOWER_BOUND = common dso_local global i32 0, align 4
@SCD_SRAM_BASE_ADDR = common dso_local global i32 0, align 4
@SCD_DRAM_BASE_ADDR = common dso_local global i32 0, align 4
@SCD_CHAINEXT_EN = common dso_local global i32 0, align 4
@FH_TCSR_CHNL_NUM = common dso_local global i32 0, align 4
@FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE = common dso_local global i64 0, align 8
@FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE = common dso_local global i64 0, align 8
@FH_TX_CHICKEN_BITS_REG = common dso_local global i32 0, align 4
@FH_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN = common dso_local global i64 0, align 8
@IWL_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@APMG_PCIDEV_STT_REG = common dso_local global i32 0, align 4
@APMG_PCIDEV_STT_VAL_L1_ACT_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_tx_start(%struct.iwl_trans* %0, i64 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %5, align 8
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @SCD_TRANS_TBL_OFFSET_QUEUE(i32 %19)
  %21 = load i32, i32* @SCD_CONTEXT_MEM_LOWER_BOUND, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memset(i32 %28, i32 0, i32 4)
  %30 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %35 = load i32, i32* @SCD_SRAM_BASE_ADDR, align 4
  %36 = call i64 @iwl_read_prph(%struct.iwl_trans* %34, i32 %35)
  %37 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br label %47

47:                                               ; preds = %41, %2
  %48 = phi i1 [ false, %2 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %52 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @SCD_CONTEXT_MEM_LOWER_BOUND, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @iwl_trans_write_mem(%struct.iwl_trans* %51, i32 %58, i32* null, i32 %59)
  %61 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %62 = load i32, i32* @SCD_DRAM_BASE_ADDR, align 4
  %63 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %64 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 10
  %68 = call i32 @iwl_write_prph(%struct.iwl_trans* %61, i32 %62, i32 %67)
  %69 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %70 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %47
  %78 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %79 = load i32, i32* @SCD_CHAINEXT_EN, align 4
  %80 = call i32 @iwl_write_prph(%struct.iwl_trans* %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %77, %47
  %82 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %83 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %84 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %87 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %90 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @iwl_trans_ac_txq_enable(%struct.iwl_trans* %82, i32 %85, i32 %88, i32 %91)
  %93 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %94 = call i32 @iwl_scd_activate_fifos(%struct.iwl_trans* %93)
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %107, %81
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @FH_TCSR_CHNL_NUM, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32 %101)
  %103 = load i64, i64* @FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE, align 8
  %104 = load i64, i64* @FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE, align 8
  %105 = or i64 %103, %104
  %106 = call i32 @iwl_write_direct32(%struct.iwl_trans* %100, i32 %102, i64 %105)
  br label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %95

110:                                              ; preds = %95
  %111 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %112 = load i32, i32* @FH_TX_CHICKEN_BITS_REG, align 4
  %113 = call i64 @iwl_read_direct32(%struct.iwl_trans* %111, i32 %112)
  store i64 %113, i64* %8, align 8
  %114 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %115 = load i32, i32* @FH_TX_CHICKEN_BITS_REG, align 4
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* @FH_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN, align 8
  %118 = or i64 %116, %117
  %119 = call i32 @iwl_write_direct32(%struct.iwl_trans* %114, i32 %115, i64 %118)
  %120 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %121 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IWL_DEVICE_FAMILY_8000, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %110
  %128 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %129 = load i32, i32* @APMG_PCIDEV_STT_REG, align 4
  %130 = load i32, i32* @APMG_PCIDEV_STT_VAL_L1_ACT_DIS, align 4
  %131 = call i32 @iwl_clear_bits_prph(%struct.iwl_trans* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %110
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @SCD_TRANS_TBL_OFFSET_QUEUE(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_trans_write_mem(%struct.iwl_trans*, i32, i32*, i32) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_trans_ac_txq_enable(%struct.iwl_trans*, i32, i32, i32) #1

declare dso_local i32 @iwl_scd_activate_fifos(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i64) #1

declare dso_local i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32) #1

declare dso_local i64 @iwl_read_direct32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_clear_bits_prph(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
