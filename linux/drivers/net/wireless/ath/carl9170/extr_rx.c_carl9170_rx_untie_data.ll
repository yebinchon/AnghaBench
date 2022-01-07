; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_untie_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_untie_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, %struct.ar9170_rx_head, %struct.TYPE_2__*, i32 }
%struct.ar9170_rx_head = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ar9170_rx_macstatus = type { i32 }
%struct.ar9170_rx_phystatus = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@AR9170_RX_STATUS_MPDU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"plcp info is clipped.\0A\00", align 1
@RX_FLAG_AMPDU_IS_LAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"frame tail is clipped.\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"rx stream does not start with a first_mpdu frame tag.\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i32 0, align 4
@RX_FLAG_NO_SIGNAL_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i32*, i32)* @carl9170_rx_untie_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_rx_untie_data(%struct.ar9170* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar9170_rx_head*, align 8
  %8 = alloca %struct.ar9170_rx_macstatus*, align 8
  %9 = alloca %struct.ar9170_rx_phystatus*, align 8
  %10 = alloca %struct.ieee80211_rx_status, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.ar9170_rx_phystatus* null, %struct.ar9170_rx_phystatus** %9, align 8
  %13 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %14 = call i32 @IS_STARTED(%struct.ar9170* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %213

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 4
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %208

25:                                               ; preds = %17
  %26 = call i32 @memset(%struct.ieee80211_rx_status* %10, i32 0, i32 4)
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = bitcast i32* %34 to i8*
  %36 = bitcast i8* %35 to %struct.ar9170_rx_macstatus*
  store %struct.ar9170_rx_macstatus* %36, %struct.ar9170_rx_macstatus** %8, align 8
  %37 = load %struct.ar9170_rx_macstatus*, %struct.ar9170_rx_macstatus** %8, align 8
  %38 = getelementptr inbounds %struct.ar9170_rx_macstatus, %struct.ar9170_rx_macstatus* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @AR9170_RX_STATUS_MPDU, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %160 [
    i32 131, label %43
    i32 130, label %83
    i32 129, label %117
    i32 128, label %140
  ]

43:                                               ; preds = %25
  %44 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %45 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp uge i64 %49, 4
  %51 = zext i1 %50 to i32
  %52 = call i32 @likely(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %43
  %55 = load i32*, i32** %5, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = bitcast i8* %56 to %struct.ar9170_rx_head*
  store %struct.ar9170_rx_head* %57, %struct.ar9170_rx_head** %7, align 8
  %58 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %59 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %58, i32 0, i32 2
  %60 = load i32*, i32** %5, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = call i32 @memcpy(%struct.ar9170_rx_head* %59, i8* %61, i32 4)
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32* %68, i32** %5, align 8
  %69 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %70 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %82

71:                                               ; preds = %43
  %72 = call i32 (...) @net_ratelimit()
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %76 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @wiphy_err(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %74, %71
  br label %208

82:                                               ; preds = %54
  br label %162

83:                                               ; preds = %25
  %84 = load i32, i32* @RX_FLAG_AMPDU_IS_LAST, align 4
  %85 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %10, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp uge i64 %89, 4
  %91 = zext i1 %90 to i32
  %92 = call i32 @likely(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %83
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 4
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %11, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = bitcast i32* %102 to i8*
  %104 = bitcast i8* %103 to %struct.ar9170_rx_phystatus*
  store %struct.ar9170_rx_phystatus* %104, %struct.ar9170_rx_phystatus** %9, align 8
  br label %116

105:                                              ; preds = %83
  %106 = call i32 (...) @net_ratelimit()
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %110 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @wiphy_err(i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %108, %105
  br label %208

116:                                              ; preds = %94
  br label %117

117:                                              ; preds = %25, %116
  %118 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %119 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %117
  %127 = call i32 (...) @net_ratelimit()
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  br label %213

130:                                              ; preds = %126
  %131 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %132 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %131, i32 0, i32 3
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @wiphy_err(i32 %135, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %208

137:                                              ; preds = %117
  %138 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %139 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %138, i32 0, i32 2
  store %struct.ar9170_rx_head* %139, %struct.ar9170_rx_head** %7, align 8
  br label %162

140:                                              ; preds = %25
  %141 = load i32*, i32** %5, align 8
  %142 = bitcast i32* %141 to i8*
  %143 = bitcast i8* %142 to %struct.ar9170_rx_head*
  store %struct.ar9170_rx_head* %143, %struct.ar9170_rx_head** %7, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = sub i64 %145, 4
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = sub i64 %149, 4
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %11, align 4
  %152 = load i32*, i32** %5, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  store i32* %153, i32** %5, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = bitcast i32* %157 to i8*
  %159 = bitcast i8* %158 to %struct.ar9170_rx_phystatus*
  store %struct.ar9170_rx_phystatus* %159, %struct.ar9170_rx_phystatus** %9, align 8
  br label %162

160:                                              ; preds = %25
  %161 = call i32 (...) @BUG()
  br label %162

162:                                              ; preds = %160, %140, %137, %82
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @ETH_ALEN, align 4
  %165 = add nsw i32 4, %164
  %166 = load i32, i32* @FCS_LEN, align 4
  %167 = add nsw i32 %165, %166
  %168 = icmp slt i32 %163, %167
  %169 = zext i1 %168 to i32
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  br label %208

173:                                              ; preds = %162
  %174 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %175 = load %struct.ar9170_rx_head*, %struct.ar9170_rx_head** %7, align 8
  %176 = load %struct.ar9170_rx_macstatus*, %struct.ar9170_rx_macstatus** %8, align 8
  %177 = call i32 @carl9170_rx_mac_status(%struct.ar9170* %174, %struct.ar9170_rx_head* %175, %struct.ar9170_rx_macstatus* %176, %struct.ieee80211_rx_status* %10)
  %178 = call i64 @unlikely(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %208

181:                                              ; preds = %173
  %182 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @carl9170_ampdu_check(%struct.ar9170* %182, i32* %183, i32 %184, %struct.ieee80211_rx_status* %10)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %181
  br label %208

188:                                              ; preds = %181
  %189 = load %struct.ar9170_rx_phystatus*, %struct.ar9170_rx_phystatus** %9, align 8
  %190 = icmp ne %struct.ar9170_rx_phystatus* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %193 = load %struct.ar9170_rx_phystatus*, %struct.ar9170_rx_phystatus** %9, align 8
  %194 = call i32 @carl9170_rx_phy_status(%struct.ar9170* %192, %struct.ar9170_rx_phystatus* %193, %struct.ieee80211_rx_status* %10)
  br label %200

195:                                              ; preds = %188
  %196 = load i32, i32* @RX_FLAG_NO_SIGNAL_VAL, align 4
  %197 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %10, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %196
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %195, %191
  %201 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %202 = load i32*, i32** %5, align 8
  %203 = load i32, i32* %11, align 4
  %204 = call i64 @carl9170_handle_mpdu(%struct.ar9170* %201, i32* %202, i32 %203, %struct.ieee80211_rx_status* %10)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %208

207:                                              ; preds = %200
  br label %213

208:                                              ; preds = %206, %187, %180, %172, %130, %115, %81, %24
  %209 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %210 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %208, %207, %129, %16
  ret void
}

declare dso_local i32 @IS_STARTED(%struct.ar9170*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @memcpy(%struct.ar9170_rx_head*, i8*, i32) #1

declare dso_local i32 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @carl9170_rx_mac_status(%struct.ar9170*, %struct.ar9170_rx_head*, %struct.ar9170_rx_macstatus*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @carl9170_ampdu_check(%struct.ar9170*, i32*, i32, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @carl9170_rx_phy_status(%struct.ar9170*, %struct.ar9170_rx_phystatus*, %struct.ieee80211_rx_status*) #1

declare dso_local i64 @carl9170_handle_mpdu(%struct.ar9170*, i32*, i32, %struct.ieee80211_rx_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
