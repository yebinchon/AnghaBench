; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_rxd_sta_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_rxd_sta_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_status = type { i64, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.mwl8k_rxd_sta = type { i32, i32, i32, i32, i32, i32, i32 }

@MWL8K_STA_RX_CTRL_OWNED_BY_HOST = common dso_local global i32 0, align 4
@MWL8K_STA_RATE_INFO_SHORTPRE = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@MWL8K_STA_RATE_INFO_40MHZ = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@MWL8K_STA_RATE_INFO_SHORTGI = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@MWL8K_STA_RATE_INFO_MCS_FORMAT = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@MWL8K_LEGACY_5G_RATE_OFFSET = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@MWL8K_STA_RX_CTRL_DECRYPT_ERROR = common dso_local global i32 0, align 4
@MWL8K_STA_RX_CTRL_DEC_ERR_TYPE = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ieee80211_rx_status*, i32*, i32*)* @mwl8k_rxd_sta_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_rxd_sta_process(i8* %0, %struct.ieee80211_rx_status* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mwl8k_rxd_sta*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mwl8k_rxd_sta*
  store %struct.mwl8k_rxd_sta* %13, %struct.mwl8k_rxd_sta** %10, align 8
  %14 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %15 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MWL8K_STA_RX_CTRL_OWNED_BY_HOST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %156

21:                                               ; preds = %4
  %22 = call i32 (...) @rmb()
  %23 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %24 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %28 = call i32 @memset(%struct.ieee80211_rx_status* %27, i32 0, i32 48)
  %29 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %30 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %36 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 0, %37
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @MWL8K_STA_RATE_INFO_ANTSELECT(i32 %40)
  %42 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @MWL8K_STA_RATE_INFO_RATEID(i32 %44)
  %46 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @MWL8K_STA_RATE_INFO_SHORTPRE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %21
  %53 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %54 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %21
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MWL8K_STA_RATE_INFO_40MHZ, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @RATE_INFO_BW_40, align 4
  %65 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @MWL8K_STA_RATE_INFO_SHORTGI, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %74 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @MWL8K_STA_RATE_INFO_MCS_FORMAT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i64, i64* @RX_ENC_HT, align 8
  %85 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %89 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 14
  br i1 %91, label %92, label %114

92:                                               ; preds = %87
  %93 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %94 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %95 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RX_ENC_HT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %113, label %101

101:                                              ; preds = %92
  %102 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %103 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MWL8K_LEGACY_5G_RATE_OFFSET, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i64, i64* @MWL8K_LEGACY_5G_RATE_OFFSET, align 8
  %109 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, %108
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %107, %101, %92
  br label %118

114:                                              ; preds = %87
  %115 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %116 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %117 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %113
  %119 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %120 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %123 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ieee80211_channel_to_frequency(i32 %121, i32 %124)
  %126 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %127 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %129 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %8, align 8
  store i32 %130, i32* %131, align 4
  %132 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %133 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MWL8K_STA_RX_CTRL_DECRYPT_ERROR, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %118
  %139 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %140 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @MWL8K_STA_RX_CTRL_DEC_ERR_TYPE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %147 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %148 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %138, %118
  %152 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %153 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le16_to_cpu(i32 %154)
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %151, %20
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @MWL8K_STA_RATE_INFO_ANTSELECT(i32) #1

declare dso_local i64 @MWL8K_STA_RATE_INFO_RATEID(i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
