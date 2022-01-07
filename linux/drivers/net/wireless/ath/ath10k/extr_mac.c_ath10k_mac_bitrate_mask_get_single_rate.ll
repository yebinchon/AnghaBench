; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_bitrate_mask_get_single_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_bitrate_mask_get_single_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ath10k = type { i32 }
%struct.cfg80211_bitrate_mask = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32*, i32 }

@WHAL_WLAN_11A_CAPABILITY = common dso_local global i32 0, align 4
@ATH10K_MAC_FIRST_OFDM_RATE_IDX = common dso_local global i64 0, align 8
@ath10k_wmi_legacy_rates = common dso_local global %struct.TYPE_4__* null, align 8
@WMI_RATE_PREAMBLE_CCK = common dso_local global i32 0, align 4
@WMI_RATE_PREAMBLE_OFDM = common dso_local global i32 0, align 4
@WMI_RATE_PREAMBLE_HT = common dso_local global i32 0, align 4
@WMI_RATE_PREAMBLE_VHT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, %struct.cfg80211_bitrate_mask*, i32*, i32*, i32)* @ath10k_mac_bitrate_mask_get_single_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_bitrate_mask_get_single_rate(%struct.ath10k* %0, i32 %1, %struct.cfg80211_bitrate_mask* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cfg80211_bitrate_mask*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.cfg80211_bitrate_mask* %2, %struct.cfg80211_bitrate_mask** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %149

22:                                               ; preds = %6
  %23 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %10, align 8
  %24 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @hweight32(i32 %30)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %89

33:                                               ; preds = %22
  %34 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %10, align 8
  %35 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ffs(i32 %41)
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  %44 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %45 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WHAL_WLAN_11A_CAPABILITY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load i64, i64* @ATH10K_MAC_FIRST_OFDM_RATE_IDX, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %50, %33
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ath10k_wmi_legacy_rates, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %18, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ath10k_wmi_legacy_rates, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i64 @ath10k_mac_bitrate_is_cck(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i32, i32* @WMI_RATE_PREAMBLE_CCK, align 4
  store i32 %73, i32* %17, align 4
  br label %76

74:                                               ; preds = %56
  %75 = load i32, i32* @WMI_RATE_PREAMBLE_OFDM, align 4
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i32*, i32** %12, align 8
  store i32 1, i32* %77, align 4
  %78 = load i32, i32* %17, align 4
  %79 = shl i32 %78, 6
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = shl i32 %82, 4
  %84 = or i32 %79, %83
  %85 = load i32, i32* %18, align 4
  %86 = shl i32 %85, 0
  %87 = or i32 %84, %86
  %88 = load i32*, i32** %11, align 8
  store i32 %87, i32* %88, align 4
  store i32 0, i32* %7, align 4
  br label %211

89:                                               ; preds = %22
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %145, %89
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %10, align 8
  %93 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @ARRAY_SIZE(i32* %99)
  %101 = icmp slt i32 %91, %100
  br i1 %101, label %102, label %148

102:                                              ; preds = %90
  %103 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %10, align 8
  %104 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @hweight8(i32 %114)
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %144

117:                                              ; preds = %102
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32*, i32** %12, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* @WMI_RATE_PREAMBLE_HT, align 4
  %122 = shl i32 %121, 6
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  %126 = shl i32 %125, 4
  %127 = or i32 %122, %126
  %128 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %10, align 8
  %129 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ffs(i32 %139)
  %141 = sub nsw i32 %140, 1
  %142 = or i32 %127, %141
  %143 = load i32*, i32** %11, align 8
  store i32 %142, i32* %143, align 4
  store i32 0, i32* %7, align 4
  br label %211

144:                                              ; preds = %102
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %90

148:                                              ; preds = %90
  br label %149

149:                                              ; preds = %148, %21
  store i32 0, i32* %15, align 4
  br label %150

150:                                              ; preds = %205, %149
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %10, align 8
  %153 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %152, i32 0, i32 0
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @ARRAY_SIZE(i32* %159)
  %161 = icmp slt i32 %151, %160
  br i1 %161, label %162, label %208

162:                                              ; preds = %150
  %163 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %10, align 8
  %164 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %163, i32 0, i32 0
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @hweight16(i32 %174)
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %204

177:                                              ; preds = %162
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  %180 = load i32*, i32** %12, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* @WMI_RATE_PREAMBLE_VHT, align 4
  %182 = shl i32 %181, 6
  %183 = load i32*, i32** %12, align 8
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %184, 1
  %186 = shl i32 %185, 4
  %187 = or i32 %182, %186
  %188 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %10, align 8
  %189 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %188, i32 0, i32 0
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ffs(i32 %199)
  %201 = sub nsw i32 %200, 1
  %202 = or i32 %187, %201
  %203 = load i32*, i32** %11, align 8
  store i32 %202, i32* %203, align 4
  store i32 0, i32* %7, align 4
  br label %211

204:                                              ; preds = %162
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %15, align 4
  br label %150

208:                                              ; preds = %150
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %208, %177, %117, %76
  %212 = load i32, i32* %7, align 4
  ret i32 %212
}

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @ath10k_mac_bitrate_is_cck(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @hweight16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
