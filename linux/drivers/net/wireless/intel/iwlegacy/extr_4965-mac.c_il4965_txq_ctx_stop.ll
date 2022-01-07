; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_txq_ctx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_txq_ctx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IL49_SCD_TXFACT = common dso_local global i32 0, align 4
@FH49_TSSR_TX_STATUS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Timeout stopping DMA channel %d [0x%08x]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_txq_ctx_stop(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %6 = load i32, i32* @IL49_SCD_TXFACT, align 4
  %7 = call i32 @_il_wr_prph(%struct.il_priv* %5, i32 %6, i32 0)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %36, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %8
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @FH49_TCSR_CHNL_TX_CONFIG_REG(i32 %17)
  %19 = call i32 @_il_wr(%struct.il_priv* %16, i32 %18, i32 0)
  %20 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %21 = load i32, i32* @FH49_TSSR_TX_STATUS_REG, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @FH49_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @FH49_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32 %24)
  %26 = call i32 @_il_poll_bit(%struct.il_priv* %20, i32 %21, i32 %23, i32 %25, i32 1000)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %15
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %32 = load i32, i32* @FH49_TSSR_TX_STATUS_REG, align 4
  %33 = call i32 @_il_rd(%struct.il_priv* %31, i32 %32)
  %34 = call i32 @IL_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %8

39:                                               ; preds = %8
  ret void
}

declare dso_local i32 @_il_wr_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @FH49_TCSR_CHNL_TX_CONFIG_REG(i32) #1

declare dso_local i32 @_il_poll_bit(%struct.il_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @FH49_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32) #1

declare dso_local i32 @IL_ERR(i8*, i32, i32) #1

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
