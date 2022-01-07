; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_rxd_ap_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_rxd_ap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_rx_status = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.mwl8k_rxd_ap = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MWL8K_AP_RX_CTRL_OWNED_BY_HOST = common dso_local global i32 0, align 4
@MWL8K_AP_RATE_INFO_MCS_FORMAT = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i64 0, align 8
@MWL8K_AP_RATE_INFO_40MHZ = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@mwl8k_rates_24 = common dso_local global %struct.TYPE_3__* null, align 8
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@MWL8K_LEGACY_5G_RATE_OFFSET = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@MWL8K_AP_RXSTAT_GENERAL_DECRYPT_ERR = common dso_local global i32 0, align 4
@MWL8K_AP_RXSTAT_DECRYPT_ERR_MASK = common dso_local global i32 0, align 4
@MWL8K_AP_RXSTAT_TKIP_DECRYPT_MIC_ERR = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ieee80211_rx_status*, i32*, i32*)* @mwl8k_rxd_ap_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_rxd_ap_process(i8* %0, %struct.ieee80211_rx_status* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mwl8k_rxd_ap*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mwl8k_rxd_ap*
  store %struct.mwl8k_rxd_ap* %13, %struct.mwl8k_rxd_ap** %10, align 8
  %14 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %15 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MWL8K_AP_RX_CTRL_OWNED_BY_HOST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %164

21:                                               ; preds = %4
  %22 = call i32 (...) @rmb()
  %23 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %24 = call i32 @memset(%struct.ieee80211_rx_status* %23, i32 0, i32 32)
  %25 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %26 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %32 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 0, %33
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %37 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MWL8K_AP_RATE_INFO_MCS_FORMAT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %21
  %43 = load i64, i64* @RX_ENC_HT, align 8
  %44 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %47 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MWL8K_AP_RATE_INFO_40MHZ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* @RATE_INFO_BW_40, align 4
  %54 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %42
  %57 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %58 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MWL8K_AP_RATE_INFO_RATEID(i32 %59)
  %61 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %89

63:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %85, %63
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mwl8k_rates_24, align 8
  %67 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mwl8k_rates_24, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %77 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %83 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %88

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %64

88:                                               ; preds = %80, %64
  br label %89

89:                                               ; preds = %88, %56
  %90 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %91 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 14
  br i1 %93, label %94, label %116

94:                                               ; preds = %89
  %95 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %96 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %99 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @RX_ENC_HT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %115, label %103

103:                                              ; preds = %94
  %104 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %105 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MWL8K_LEGACY_5G_RATE_OFFSET, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32, i32* @MWL8K_LEGACY_5G_RATE_OFFSET, align 4
  %111 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %112 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %103, %94
  br label %120

116:                                              ; preds = %89
  %117 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %118 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %115
  %121 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %122 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ieee80211_channel_to_frequency(i32 %123, i32 %126)
  %128 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  %130 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %131 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %8, align 8
  store i32 %132, i32* %133, align 4
  %134 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %135 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MWL8K_AP_RXSTAT_GENERAL_DECRYPT_ERR, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %120
  %140 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %141 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MWL8K_AP_RXSTAT_DECRYPT_ERR_MASK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %139
  %147 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %148 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @MWL8K_AP_RXSTAT_TKIP_DECRYPT_MIC_ERR, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %155 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %156 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %146, %139, %120
  %160 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %161 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @le16_to_cpu(i32 %162)
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %159, %20
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @MWL8K_AP_RATE_INFO_RATEID(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
