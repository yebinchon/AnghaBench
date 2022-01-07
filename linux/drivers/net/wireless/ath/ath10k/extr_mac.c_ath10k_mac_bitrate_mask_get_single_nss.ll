; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_bitrate_mask_get_single_nss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_bitrate_mask_get_single_nss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ieee80211_supported_band* }
%struct.ieee80211_supported_band = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cfg80211_bitrate_mask = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64*, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, %struct.cfg80211_bitrate_mask*, i32*)* @ath10k_mac_bitrate_mask_get_single_nss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_bitrate_mask_get_single_nss(%struct.ath10k* %0, i32 %1, %struct.cfg80211_bitrate_mask* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfg80211_bitrate_mask*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cfg80211_bitrate_mask* %2, %struct.cfg80211_bitrate_mask** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %18, i64 %20
  store %struct.ieee80211_supported_band* %21, %struct.ieee80211_supported_band** %10, align 8
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %23 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %8, align 8
  %29 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %177

38:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %97, %38
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %8, align 8
  %42 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = call i32 @ARRAY_SIZE(i64* %48)
  %50 = icmp slt i32 %40, %49
  br i1 %50, label %51, label %100

51:                                               ; preds = %39
  %52 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %8, align 8
  %53 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %97

66:                                               ; preds = %51
  %67 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %8, align 8
  %68 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %80 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %78, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %66
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @BIT(i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %95

94:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %177

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %65
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %39

100:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %153, %100
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %8, align 8
  %104 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = call i32 @ARRAY_SIZE(i64* %110)
  %112 = icmp slt i32 %102, %111
  br i1 %112, label %113, label %156

113:                                              ; preds = %101
  %114 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %8, align 8
  %115 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  br label %153

128:                                              ; preds = %113
  %129 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %8, align 8
  %130 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %129, i32 0, i32 0
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i64 @ath10k_mac_get_max_vht_mcs_map(i32 %141, i32 %142)
  %144 = icmp eq i64 %140, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %128
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @BIT(i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %13, align 4
  br label %151

150:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  br label %177

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152, %127
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %101

156:                                              ; preds = %101
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 0, i32* %5, align 4
  br label %177

161:                                              ; preds = %156
  %162 = load i32, i32* %12, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 0, i32* %5, align 4
  br label %177

165:                                              ; preds = %161
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @fls(i32 %166)
  %168 = call i32 @BIT(i32 %167)
  %169 = sub nsw i32 %168, 1
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store i32 0, i32* %5, align 4
  br label %177

173:                                              ; preds = %165
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @fls(i32 %174)
  %176 = load i32*, i32** %9, align 8
  store i32 %175, i32* %176, align 4
  store i32 1, i32* %5, align 4
  br label %177

177:                                              ; preds = %173, %172, %164, %160, %150, %94, %37
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ath10k_mac_get_max_vht_mcs_map(i32, i32) #1

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
