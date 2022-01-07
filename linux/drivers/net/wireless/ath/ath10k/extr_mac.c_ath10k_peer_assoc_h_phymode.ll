; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_h_phymode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_h_phymode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.wmi_peer_assoc_complete_arg = type { i32 }
%struct.ath10k_vif = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.cfg80211_chan_def = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@MODE_UNKNOWN = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_40 = common dso_local global i32 0, align 4
@MODE_11AC_VHT40 = common dso_local global i32 0, align 4
@MODE_11AC_VHT20 = common dso_local global i32 0, align 4
@MODE_11NG_HT40 = common dso_local global i32 0, align 4
@MODE_11NG_HT20 = common dso_local global i32 0, align 4
@MODE_11G = common dso_local global i32 0, align 4
@MODE_11B = common dso_local global i32 0, align 4
@MODE_11NA_HT40 = common dso_local global i32 0, align 4
@MODE_11NA_HT20 = common dso_local global i32 0, align 4
@MODE_11A = common dso_local global i32 0, align 4
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"mac peer %pM phymode %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*)* @ath10k_peer_assoc_h_phymode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_peer_assoc_h_phymode(%struct.ath10k* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.wmi_peer_assoc_complete_arg* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.wmi_peer_assoc_complete_arg*, align 8
  %9 = alloca %struct.ath10k_vif*, align 8
  %10 = alloca %struct.cfg80211_chan_def, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.wmi_peer_assoc_complete_arg* %3, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %19, %struct.ath10k_vif** %9, align 8
  %20 = load i32, i32* @MODE_UNKNOWN, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = call i32 @ath10k_mac_vif_chan(%struct.ieee80211_vif* %21, %struct.cfg80211_chan_def* %10)
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %160

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %32 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %12, align 8
  %40 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %41 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %13, align 8
  %49 = load i32, i32* %11, align 4
  switch i32 %49, label %142 [
    i32 129, label %50
    i32 128, label %103
  ]

50:                                               ; preds = %26
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @ath10k_peer_assoc_h_vht_masked(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  %61 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IEEE80211_STA_RX_BW_40, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @MODE_11AC_VHT40, align 4
  store i32 %67, i32* %14, align 4
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @MODE_11AC_VHT20, align 4
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %68, %66
  br label %102

71:                                               ; preds = %56, %50
  %72 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @ath10k_peer_assoc_h_ht_masked(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IEEE80211_STA_RX_BW_40, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @MODE_11NG_HT40, align 4
  store i32 %88, i32* %14, align 4
  br label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @MODE_11NG_HT20, align 4
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %89, %87
  br label %101

92:                                               ; preds = %77, %71
  %93 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %94 = call i32 @ath10k_mac_sta_has_ofdm_only(%struct.ieee80211_sta* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @MODE_11G, align 4
  store i32 %97, i32* %14, align 4
  br label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @MODE_11B, align 4
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %98, %96
  br label %101

101:                                              ; preds = %100, %91
  br label %102

102:                                              ; preds = %101, %70
  br label %143

103:                                              ; preds = %26
  %104 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @ath10k_peer_assoc_h_vht_masked(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %115 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %116 = call i32 @ath10k_mac_get_phymode_vht(%struct.ath10k* %114, %struct.ieee80211_sta* %115)
  store i32 %116, i32* %14, align 4
  br label %141

117:                                              ; preds = %109, %103
  %118 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @ath10k_peer_assoc_h_ht_masked(i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %123
  %128 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IEEE80211_STA_RX_BW_40, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @MODE_11NA_HT40, align 4
  store i32 %134, i32* %14, align 4
  br label %137

135:                                              ; preds = %127
  %136 = load i32, i32* @MODE_11NA_HT20, align 4
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %135, %133
  br label %140

138:                                              ; preds = %123, %117
  %139 = load i32, i32* @MODE_11A, align 4
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %138, %137
  br label %141

141:                                              ; preds = %140, %113
  br label %143

142:                                              ; preds = %26
  br label %143

143:                                              ; preds = %142, %141, %102
  %144 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %145 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %146 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %147 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @ath10k_wmi_phymode_str(i32 %149)
  %151 = call i32 @ath10k_dbg(%struct.ath10k* %144, i32 %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %148, i32 %150)
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %154 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @MODE_UNKNOWN, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i64 @WARN_ON(i32 %158)
  br label %160

160:                                              ; preds = %143, %25
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_mac_vif_chan(%struct.ieee80211_vif*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @ath10k_peer_assoc_h_vht_masked(i32*) #1

declare dso_local i32 @ath10k_peer_assoc_h_ht_masked(i32*) #1

declare dso_local i32 @ath10k_mac_sta_has_ofdm_only(%struct.ieee80211_sta*) #1

declare dso_local i32 @ath10k_mac_get_phymode_vht(%struct.ath10k*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath10k_wmi_phymode_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
