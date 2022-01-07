; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_txq_ctx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_txq_ctx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ALM_SCD_MODE_REG = common dso_local global i32 0, align 4
@ALM_SCD_TXFACT_REG = common dso_local global i32 0, align 4
@FH39_TSSR_TX_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il3945_hw_txq_ctx_stop(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = load i32, i32* @ALM_SCD_MODE_REG, align 4
  %6 = call i32 @_il_wr_prph(%struct.il_priv* %4, i32 %5, i32 0)
  %7 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %8 = load i32, i32* @ALM_SCD_TXFACT_REG, align 4
  %9 = call i32 @_il_wr_prph(%struct.il_priv* %7, i32 %8, i32 0)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %29, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @FH39_TCSR_CONFIG(i32 %19)
  %21 = call i32 @_il_wr(%struct.il_priv* %18, i32 %20, i32 0)
  %22 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %23 = load i32, i32* @FH39_TSSR_TX_STATUS, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @FH39_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @FH39_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32 %26)
  %28 = call i32 @_il_poll_bit(%struct.il_priv* %22, i32 %23, i32 %25, i32 %27, i32 1000)
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %10

32:                                               ; preds = %10
  ret void
}

declare dso_local i32 @_il_wr_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @FH39_TCSR_CONFIG(i32) #1

declare dso_local i32 @_il_poll_bit(%struct.il_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @FH39_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
