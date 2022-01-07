; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_ath_debug_stat_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_ath_debug_stat_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ath_buf = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.ath_tx_status = type { i32, i32 }
%struct.ath_txq = type { i32 }

@tx_pkts_all = common dso_local global i32 0, align 4
@ATH_TX_ERROR = common dso_local global i32 0, align 4
@a_xretries = common dso_local global i32 0, align 4
@a_completed = common dso_local global i32 0, align 4
@ATH9K_TXERR_XRETRY = common dso_local global i32 0, align 4
@xretries = common dso_local global i32 0, align 4
@completed = common dso_local global i32 0, align 4
@ATH9K_TXERR_FILT = common dso_local global i32 0, align 4
@txerr_filtered = common dso_local global i32 0, align 4
@ATH9K_TXERR_FIFO = common dso_local global i32 0, align 4
@fifo_underrun = common dso_local global i32 0, align 4
@ATH9K_TXERR_XTXOP = common dso_local global i32 0, align 4
@xtxop = common dso_local global i32 0, align 4
@ATH9K_TXERR_TIMER_EXPIRED = common dso_local global i32 0, align 4
@timer_exp = common dso_local global i32 0, align 4
@ATH9K_TX_DESC_CFG_ERR = common dso_local global i32 0, align 4
@desc_cfg_err = common dso_local global i32 0, align 4
@ATH9K_TX_DATA_UNDERRUN = common dso_local global i32 0, align 4
@data_underrun = common dso_local global i32 0, align 4
@ATH9K_TX_DELIM_UNDERRUN = common dso_local global i32 0, align 4
@delim_underrun = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_debug_stat_tx(%struct.ath_softc* %0, %struct.ath_buf* %1, %struct.ath_tx_status* %2, %struct.ath_txq* %3, i32 %4) #0 {
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_buf*, align 8
  %8 = alloca %struct.ath_tx_status*, align 8
  %9 = alloca %struct.ath_txq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %6, align 8
  store %struct.ath_buf* %1, %struct.ath_buf** %7, align 8
  store %struct.ath_tx_status* %2, %struct.ath_tx_status** %8, align 8
  store %struct.ath_txq* %3, %struct.ath_txq** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ath_txq*, %struct.ath_txq** %9, align 8
  %13 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @tx_pkts_all, align 4
  %18 = call i32 @TX_STAT_INC(%struct.ath_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %20 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %23
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %38 = call i64 @bf_isampdu(%struct.ath_buf* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %5
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ATH_TX_ERROR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @a_xretries, align 4
  %49 = call i32 @TX_STAT_INC(%struct.ath_softc* %46, i32 %47, i32 %48)
  br label %55

50:                                               ; preds = %40
  %51 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @a_completed, align 4
  %54 = call i32 @TX_STAT_INC(%struct.ath_softc* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  br label %74

56:                                               ; preds = %5
  %57 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %58 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ATH9K_TXERR_XRETRY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @xretries, align 4
  %67 = call i32 @TX_STAT_INC(%struct.ath_softc* %64, i32 %65, i32 %66)
  br label %73

68:                                               ; preds = %56
  %69 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @completed, align 4
  %72 = call i32 @TX_STAT_INC(%struct.ath_softc* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %55
  %75 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %76 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ATH9K_TXERR_FILT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @txerr_filtered, align 4
  %85 = call i32 @TX_STAT_INC(%struct.ath_softc* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %74
  %87 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %88 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ATH9K_TXERR_FIFO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @fifo_underrun, align 4
  %97 = call i32 @TX_STAT_INC(%struct.ath_softc* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %86
  %99 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %100 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ATH9K_TXERR_XTXOP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @xtxop, align 4
  %109 = call i32 @TX_STAT_INC(%struct.ath_softc* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %98
  %111 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %112 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ATH9K_TXERR_TIMER_EXPIRED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @timer_exp, align 4
  %121 = call i32 @TX_STAT_INC(%struct.ath_softc* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %110
  %123 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %124 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ATH9K_TX_DESC_CFG_ERR, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @desc_cfg_err, align 4
  %133 = call i32 @TX_STAT_INC(%struct.ath_softc* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %122
  %135 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %136 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ATH9K_TX_DATA_UNDERRUN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @data_underrun, align 4
  %145 = call i32 @TX_STAT_INC(%struct.ath_softc* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %134
  %147 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %148 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ATH9K_TX_DELIM_UNDERRUN, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @delim_underrun, align 4
  %157 = call i32 @TX_STAT_INC(%struct.ath_softc* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %146
  ret void
}

declare dso_local i32 @TX_STAT_INC(%struct.ath_softc*, i32, i32) #1

declare dso_local i64 @bf_isampdu(%struct.ath_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
