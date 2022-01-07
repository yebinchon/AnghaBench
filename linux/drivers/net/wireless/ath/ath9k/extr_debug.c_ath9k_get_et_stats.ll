; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_ath9k_get_et_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_ath9k_get_et_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ethtool_stats = type { i32 }

@IEEE80211_AC_BE = common dso_local global i32 0, align 4
@IEEE80211_AC_BK = common dso_local global i32 0, align 4
@IEEE80211_AC_VI = common dso_local global i32 0, align 4
@IEEE80211_AC_VO = common dso_local global i32 0, align 4
@rx_pkts_all = common dso_local global i32 0, align 4
@rx_bytes_all = common dso_local global i32 0, align 4
@tx_pkts_all = common dso_local global i32 0, align 4
@tx_bytes_all = common dso_local global i32 0, align 4
@queued = common dso_local global i32 0, align 4
@completed = common dso_local global i32 0, align 4
@xretries = common dso_local global i32 0, align 4
@a_aggr = common dso_local global i32 0, align 4
@a_queued_hw = common dso_local global i32 0, align 4
@a_completed = common dso_local global i32 0, align 4
@a_retries = common dso_local global i32 0, align 4
@a_xretries = common dso_local global i32 0, align 4
@fifo_underrun = common dso_local global i32 0, align 4
@xtxop = common dso_local global i32 0, align 4
@timer_exp = common dso_local global i32 0, align 4
@desc_cfg_err = common dso_local global i32 0, align 4
@data_underrun = common dso_local global i32 0, align 4
@delim_underrun = common dso_local global i32 0, align 4
@crc_err = common dso_local global i32 0, align 4
@decrypt_crc_err = common dso_local global i32 0, align 4
@phy_err = common dso_local global i32 0, align 4
@mic_err = common dso_local global i32 0, align 4
@pre_delim_crc_err = common dso_local global i32 0, align 4
@post_delim_crc_err = common dso_local global i32 0, align 4
@decrypt_busy_err = common dso_local global i32 0, align 4
@phy_err_stats = common dso_local global i32* null, align 8
@ATH9K_PHYERR_RADAR = common dso_local global i64 0, align 8
@ATH9K_PHYERR_OFDM_TIMING = common dso_local global i64 0, align 8
@ATH9K_PHYERR_CCK_TIMING = common dso_local global i64 0, align 8
@ATH9K_SSTATS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_get_et_stats(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ethtool_stats* %2, i64* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ethtool_stats*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ath_softc*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ethtool_stats* %2, %struct.ethtool_stats** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  store %struct.ath_softc* %13, %struct.ath_softc** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* @IEEE80211_AC_BE, align 4
  %20 = call i64 @PR_QNUM(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* @IEEE80211_AC_BK, align 4
  %30 = call i64 @PR_QNUM(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %23, %33
  %35 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* @IEEE80211_AC_VI, align 4
  %41 = call i64 @PR_QNUM(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %34, %44
  %46 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %47 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* @IEEE80211_AC_VO, align 4
  %52 = call i64 @PR_QNUM(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %45, %55
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  store i64 %56, i64* %61, align 8
  %62 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %63 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* @IEEE80211_AC_BE, align 4
  %68 = call i64 @PR_QNUM(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %73 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* @IEEE80211_AC_BK, align 4
  %78 = call i64 @PR_QNUM(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %71, %81
  %83 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %84 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* @IEEE80211_AC_VI, align 4
  %89 = call i64 @PR_QNUM(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %82, %92
  %94 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %95 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* @IEEE80211_AC_VO, align 4
  %100 = call i64 @PR_QNUM(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %93, %103
  %105 = load i64*, i64** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  store i64 %104, i64* %109, align 8
  %110 = load i32, i32* @rx_pkts_all, align 4
  %111 = call i32 @AWDATA_RX(i32 %110)
  %112 = load i32, i32* @rx_bytes_all, align 4
  %113 = call i32 @AWDATA_RX(i32 %112)
  %114 = load i32, i32* @tx_pkts_all, align 4
  %115 = call i32 @AWDATA(i32 %114)
  %116 = load i32, i32* @tx_bytes_all, align 4
  %117 = call i32 @AWDATA(i32 %116)
  %118 = load i32, i32* @queued, align 4
  %119 = call i32 @AWDATA(i32 %118)
  %120 = load i32, i32* @completed, align 4
  %121 = call i32 @AWDATA(i32 %120)
  %122 = load i32, i32* @xretries, align 4
  %123 = call i32 @AWDATA(i32 %122)
  %124 = load i32, i32* @a_aggr, align 4
  %125 = call i32 @AWDATA(i32 %124)
  %126 = load i32, i32* @a_queued_hw, align 4
  %127 = call i32 @AWDATA(i32 %126)
  %128 = load i32, i32* @a_completed, align 4
  %129 = call i32 @AWDATA(i32 %128)
  %130 = load i32, i32* @a_retries, align 4
  %131 = call i32 @AWDATA(i32 %130)
  %132 = load i32, i32* @a_xretries, align 4
  %133 = call i32 @AWDATA(i32 %132)
  %134 = load i32, i32* @fifo_underrun, align 4
  %135 = call i32 @AWDATA(i32 %134)
  %136 = load i32, i32* @xtxop, align 4
  %137 = call i32 @AWDATA(i32 %136)
  %138 = load i32, i32* @timer_exp, align 4
  %139 = call i32 @AWDATA(i32 %138)
  %140 = load i32, i32* @desc_cfg_err, align 4
  %141 = call i32 @AWDATA(i32 %140)
  %142 = load i32, i32* @data_underrun, align 4
  %143 = call i32 @AWDATA(i32 %142)
  %144 = load i32, i32* @delim_underrun, align 4
  %145 = call i32 @AWDATA(i32 %144)
  %146 = load i32, i32* @crc_err, align 4
  %147 = call i32 @AWDATA_RX(i32 %146)
  %148 = load i32, i32* @decrypt_crc_err, align 4
  %149 = call i32 @AWDATA_RX(i32 %148)
  %150 = load i32, i32* @phy_err, align 4
  %151 = call i32 @AWDATA_RX(i32 %150)
  %152 = load i32, i32* @mic_err, align 4
  %153 = call i32 @AWDATA_RX(i32 %152)
  %154 = load i32, i32* @pre_delim_crc_err, align 4
  %155 = call i32 @AWDATA_RX(i32 %154)
  %156 = load i32, i32* @post_delim_crc_err, align 4
  %157 = call i32 @AWDATA_RX(i32 %156)
  %158 = load i32, i32* @decrypt_busy_err, align 4
  %159 = call i32 @AWDATA_RX(i32 %158)
  %160 = load i32*, i32** @phy_err_stats, align 8
  %161 = load i64, i64* @ATH9K_PHYERR_RADAR, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @AWDATA_RX(i32 %163)
  %165 = load i32*, i32** @phy_err_stats, align 8
  %166 = load i64, i64* @ATH9K_PHYERR_OFDM_TIMING, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @AWDATA_RX(i32 %168)
  %170 = load i32*, i32** @phy_err_stats, align 8
  %171 = load i64, i64* @ATH9K_PHYERR_CCK_TIMING, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @AWDATA_RX(i32 %173)
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @ATH9K_SSTATS_LEN, align 4
  %177 = icmp ne i32 %175, %176
  %178 = zext i1 %177 to i32
  %179 = call i32 @WARN_ON(i32 %178)
  ret void
}

declare dso_local i64 @PR_QNUM(i32) #1

declare dso_local i32 @AWDATA_RX(i32) #1

declare dso_local i32 @AWDATA(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
