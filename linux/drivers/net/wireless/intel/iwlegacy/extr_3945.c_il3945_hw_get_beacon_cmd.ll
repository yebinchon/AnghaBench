; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_get_beacon_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_get_beacon_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.il3945_frame = type { i32 }
%struct.il3945_tx_beacon_cmd = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@MAX_MPDU_SIZE = common dso_local global i32 0, align 4
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_TSF_MSK = common dso_local global i32 0, align 4
@IL_OFDM_BASIC_RATES_MASK = common dso_local global i32 0, align 4
@IL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@IL_CCK_BASIC_RATES_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il3945_hw_get_beacon_cmd(%struct.il_priv* %0, %struct.il3945_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.il3945_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.il3945_tx_beacon_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.il3945_frame* %1, %struct.il3945_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.il3945_frame*, %struct.il3945_frame** %5, align 8
  %10 = getelementptr inbounds %struct.il3945_frame, %struct.il3945_frame* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to %struct.il3945_tx_beacon_cmd*
  store %struct.il3945_tx_beacon_cmd* %11, %struct.il3945_tx_beacon_cmd** %7, align 8
  %12 = load %struct.il3945_tx_beacon_cmd*, %struct.il3945_tx_beacon_cmd** %7, align 8
  %13 = call i32 @memset(%struct.il3945_tx_beacon_cmd* %12, i32 0, i32 40)
  %14 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.il3945_tx_beacon_cmd*, %struct.il3945_tx_beacon_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.il3945_tx_beacon_cmd, %struct.il3945_tx_beacon_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %22 = load %struct.il3945_tx_beacon_cmd*, %struct.il3945_tx_beacon_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.il3945_tx_beacon_cmd, %struct.il3945_tx_beacon_cmd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 8
  %26 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %27 = load %struct.il3945_tx_beacon_cmd*, %struct.il3945_tx_beacon_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.il3945_tx_beacon_cmd, %struct.il3945_tx_beacon_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @il3945_fill_beacon_frame(%struct.il_priv* %26, i32 %29, i32 -36)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MAX_MPDU_SIZE, align 4
  %33 = icmp ugt i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @cpu_to_le16(i32 %36)
  %38 = load %struct.il3945_tx_beacon_cmd*, %struct.il3945_tx_beacon_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.il3945_tx_beacon_cmd, %struct.il3945_tx_beacon_cmd* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.il3945_tx_beacon_cmd*, %struct.il3945_tx_beacon_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.il3945_tx_beacon_cmd, %struct.il3945_tx_beacon_cmd* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %46 = load i32, i32* @TX_CMD_FLG_TSF_MSK, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.il3945_tx_beacon_cmd*, %struct.il3945_tx_beacon_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.il3945_tx_beacon_cmd, %struct.il3945_tx_beacon_cmd* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @IL_OFDM_BASIC_RATES_MASK, align 4
  %52 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %53 = ashr i32 %51, %52
  %54 = and i32 %53, 255
  %55 = load %struct.il3945_tx_beacon_cmd*, %struct.il3945_tx_beacon_cmd** %7, align 8
  %56 = getelementptr inbounds %struct.il3945_tx_beacon_cmd, %struct.il3945_tx_beacon_cmd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* @IL_CCK_BASIC_RATES_MASK, align 4
  %61 = and i32 %60, 15
  %62 = load %struct.il3945_tx_beacon_cmd*, %struct.il3945_tx_beacon_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.il3945_tx_beacon_cmd, %struct.il3945_tx_beacon_cmd* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = add i64 40, %68
  %70 = trunc i64 %69 to i32
  ret i32 %70
}

declare dso_local i32 @memset(%struct.il3945_tx_beacon_cmd*, i32, i32) #1

declare dso_local i32 @il3945_fill_beacon_frame(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
