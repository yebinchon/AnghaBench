; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_tx_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_tx_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.il3945_shared* }
%struct.il3945_shared = type { i32* }
%struct.il_tx_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@FH39_TCSR_TX_CONFIG_REG_VAL_CIRQ_RTC_NOINT = common dso_local global i32 0, align 4
@FH39_TCSR_TX_CONFIG_REG_VAL_MSG_MODE_TXF = common dso_local global i32 0, align 4
@FH39_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_IFTFD = common dso_local global i32 0, align 4
@FH39_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE_VAL = common dso_local global i32 0, align 4
@FH39_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE = common dso_local global i32 0, align 4
@FH39_TSSR_CBB_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il3945_hw_tx_queue_init(%struct.il_priv* %0, %struct.il_tx_queue* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.il3945_shared*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_tx_queue* %1, %struct.il_tx_queue** %4, align 8
  %7 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %8 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.il3945_shared*, %struct.il3945_shared** %13, align 8
  store %struct.il3945_shared* %14, %struct.il3945_shared** %6, align 8
  %15 = load %struct.il_tx_queue*, %struct.il_tx_queue** %4, align 8
  %16 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @cpu_to_le32(i32 %19)
  %21 = load %struct.il3945_shared*, %struct.il3945_shared** %6, align 8
  %22 = getelementptr inbounds %struct.il3945_shared, %struct.il3945_shared* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  %27 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @FH39_CBCC_CTRL(i32 %28)
  %30 = call i32 @il_wr(%struct.il_priv* %27, i32 %29, i32 0)
  %31 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @FH39_CBCC_BASE(i32 %32)
  %34 = call i32 @il_wr(%struct.il_priv* %31, i32 %33, i32 0)
  %35 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @FH39_TCSR_CONFIG(i32 %36)
  %38 = load i32, i32* @FH39_TCSR_TX_CONFIG_REG_VAL_CIRQ_RTC_NOINT, align 4
  %39 = load i32, i32* @FH39_TCSR_TX_CONFIG_REG_VAL_MSG_MODE_TXF, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FH39_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_IFTFD, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FH39_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE_VAL, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FH39_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @il_wr(%struct.il_priv* %35, i32 %37, i32 %46)
  %48 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %49 = load i32, i32* @FH39_TSSR_CBB_BASE, align 4
  %50 = call i32 @_il_rd(%struct.il_priv* %48, i32 %49)
  ret i32 0
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @FH39_CBCC_CTRL(i32) #1

declare dso_local i32 @FH39_CBCC_BASE(i32) #1

declare dso_local i32 @FH39_TCSR_CONFIG(i32) #1

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
