; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@RFH_RXF_DMA_CFG_GEN3 = common dso_local global i32 0, align 4
@RFH_GEN_STATUS_GEN3 = common dso_local global i32 0, align 4
@RXF_DMA_IDLE = common dso_local global i32 0, align 4
@RFH_RXF_DMA_CFG = common dso_local global i32 0, align 4
@RFH_GEN_STATUS = common dso_local global i32 0, align 4
@FH_MEM_RCSR_CHNL0_CONFIG_REG = common dso_local global i32 0, align 4
@FH_MEM_RSSR_RX_STATUS_REG = common dso_local global i32 0, align 4
@FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_rx_stop(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %5 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %13 = load i32, i32* @RFH_RXF_DMA_CFG_GEN3, align 4
  %14 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %12, i32 %13, i32 0)
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %16 = load i32, i32* @RFH_GEN_STATUS_GEN3, align 4
  %17 = load i32, i32* @RXF_DMA_IDLE, align 4
  %18 = load i32, i32* @RXF_DMA_IDLE, align 4
  %19 = call i32 @iwl_poll_umac_prph_bit(%struct.iwl_trans* %15, i32 %16, i32 %17, i32 %18, i32 1000)
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %29 = load i32, i32* @RFH_RXF_DMA_CFG, align 4
  %30 = call i32 @iwl_write_prph(%struct.iwl_trans* %28, i32 %29, i32 0)
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %32 = load i32, i32* @RFH_GEN_STATUS, align 4
  %33 = load i32, i32* @RXF_DMA_IDLE, align 4
  %34 = load i32, i32* @RXF_DMA_IDLE, align 4
  %35 = call i32 @iwl_poll_prph_bit(%struct.iwl_trans* %31, i32 %32, i32 %33, i32 %34, i32 1000)
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %20
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %38 = load i32, i32* @FH_MEM_RCSR_CHNL0_CONFIG_REG, align 4
  %39 = call i32 @iwl_write_direct32(%struct.iwl_trans* %37, i32 %38, i32 0)
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %41 = load i32, i32* @FH_MEM_RSSR_RX_STATUS_REG, align 4
  %42 = load i32, i32* @FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE, align 4
  %43 = call i32 @iwl_poll_direct_bit(%struct.iwl_trans* %40, i32 %41, i32 %42, i32 1000)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %27, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @iwl_write_umac_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_poll_umac_prph_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_poll_prph_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_poll_direct_bit(%struct.iwl_trans*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
