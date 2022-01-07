; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_set_ht_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_set_ht_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_supported_band = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@MWL8K_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@MWL8K_CAP_GREENFIELD = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_GRN_FLD = common dso_local global i32 0, align 4
@MWL8K_CAP_AMPDU = common dso_local global i32 0, align 4
@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@IEEE80211_HT_MPDU_DENSITY_NONE = common dso_local global i32 0, align 4
@MWL8K_CAP_RX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@MWL8K_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@MWL8K_CAP_SHORTGI_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@MWL8K_CAP_SHORTGI_20MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@MWL8K_CAP_DELAY_BA = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DELAY_BA = common dso_local global i32 0, align 4
@MWL8K_CAP_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@MWL8K_CAP_RX_ANTENNA_MASK = common dso_local global i32 0, align 4
@MWL8K_CAP_TX_ANTENNA_MASK = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_RX_DIFF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_supported_band*, i32)* @mwl8k_set_ht_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_set_ht_caps(%struct.ieee80211_hw* %0, %struct.ieee80211_supported_band* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MWL8K_CAP_MAX_AMSDU, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %16, %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MWL8K_CAP_GREENFIELD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MWL8K_CAP_AMPDU, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %42 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %43 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %41, i32 %42)
  %44 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %45 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @IEEE80211_HT_MPDU_DENSITY_NONE, align 4
  %49 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %40, %35
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MWL8K_CAP_RX_STBC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %57, %52
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @MWL8K_CAP_TX_STBC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %69, %64
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @MWL8K_CAP_SHORTGI_40MHZ, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %83 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %81, %76
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @MWL8K_CAP_SHORTGI_20MHZ, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %95 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %96 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %93, %88
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @MWL8K_CAP_DELAY_BA, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load i32, i32* @IEEE80211_HT_CAP_DELAY_BA, align 4
  %107 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %108 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %106
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %105, %100
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @MWL8K_CAP_40MHZ, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %119 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %120 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %117, %112
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @MWL8K_CAP_RX_ANTENNA_MASK, align 4
  %127 = and i32 %125, %126
  %128 = call i32 @hweight32(i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @MWL8K_CAP_TX_ANTENNA_MASK, align 4
  %131 = and i32 %129, %130
  %132 = call i32 @hweight32(i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %134 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 255, i32* %138, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp sge i32 %139, 2
  br i1 %140, label %141, label %148

141:                                              ; preds = %124
  %142 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %143 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  store i32 255, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %124
  %149 = load i32, i32* %7, align 4
  %150 = icmp sge i32 %149, 3
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %153 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  store i32 255, i32* %157, align 4
  br label %158

158:                                              ; preds = %151, %148
  %159 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %160 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 4
  store i32 1, i32* %164, align 4
  %165 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %166 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %167 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  store i32 %165, i32* %169, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %191

173:                                              ; preds = %158
  %174 = load i32, i32* @IEEE80211_HT_MCS_TX_RX_DIFF, align 4
  %175 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %176 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %174
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sub nsw i32 %181, 1
  %183 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %184 = shl i32 %182, %183
  %185 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %186 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %184
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %173, %158
  ret void
}

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @hweight32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
