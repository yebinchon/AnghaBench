; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_connect_ap_mode_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_connect_ap_mode_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32 }
%struct.station_info = type { i32*, i64 }
%struct.ieee80211_mgmt = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@ATH6KL_DBG_TRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"new station %pM aid=%d\0A\00", align 1
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_connect_ap_mode_sta(%struct.ath6kl_vif* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.ath6kl_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.station_info*, align 8
  %24 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i64 0, i64* %22, align 8
  %25 = load i32, i32* @ATH6KL_DBG_TRC, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @ath6kl_dbg(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %26, i32 %27)
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %30, 4
  br i1 %31, label %32, label %86

32:                                               ; preds = %9
  %33 = load i32*, i32** %17, align 8
  %34 = bitcast i32* %33 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %34, %struct.ieee80211_mgmt** %24, align 8
  %35 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %24, align 8
  %36 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ieee80211_is_assoc_req(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %32
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %42, 12
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %24, align 8
  %46 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %19, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32*, i32** %19, align 8
  %55 = ptrtoint i32* %53 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  store i64 %58, i64* %22, align 8
  br label %85

59:                                               ; preds = %40, %32
  %60 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %24, align 8
  %61 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ieee80211_is_reassoc_req(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp uge i64 %67, 12
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %24, align 8
  %71 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %19, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32*, i32** %19, align 8
  %80 = ptrtoint i32* %78 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  store i64 %83, i64* %22, align 8
  br label %84

84:                                               ; preds = %69, %65, %59
  br label %85

85:                                               ; preds = %84, %44
  br label %86

86:                                               ; preds = %85, %9
  %87 = load i32*, i32** %19, align 8
  store i32* %87, i32** %21, align 8
  br label %88

88:                                               ; preds = %175, %86
  %89 = load i32*, i32** %21, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32*, i32** %21, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32*, i32** %19, align 8
  %95 = load i64, i64* %22, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = icmp ult i32* %93, %96
  br label %98

98:                                               ; preds = %91, %88
  %99 = phi i1 [ false, %88 ], [ %97, %91 ]
  br i1 %99, label %100, label %183

100:                                              ; preds = %98
  %101 = load i32*, i32** %21, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32*, i32** %21, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load i32*, i32** %19, align 8
  %109 = load i64, i64* %22, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = icmp ugt i32* %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %183

113:                                              ; preds = %100
  %114 = load i32*, i32** %21, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @WLAN_EID_RSN, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32*, i32** %21, align 8
  store i32* %120, i32** %20, align 8
  br label %175

121:                                              ; preds = %113
  %122 = load i32*, i32** %21, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %163

127:                                              ; preds = %121
  %128 = load i32*, i32** %21, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp sge i32 %130, 4
  br i1 %131, label %132, label %163

132:                                              ; preds = %127
  %133 = load i32*, i32** %21, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %163

137:                                              ; preds = %132
  %138 = load i32*, i32** %21, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 80
  br i1 %141, label %142, label %163

142:                                              ; preds = %137
  %143 = load i32*, i32** %21, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 4
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 242
  br i1 %146, label %147, label %163

147:                                              ; preds = %142
  %148 = load i32*, i32** %21, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32*, i32** %21, align 8
  store i32* %153, i32** %20, align 8
  br label %162

154:                                              ; preds = %147
  %155 = load i32*, i32** %21, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 5
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 4
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32*, i32** %21, align 8
  store i32* %160, i32** %20, align 8
  br label %183

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %161, %152
  br label %174

163:                                              ; preds = %142, %137, %132, %127, %121
  %164 = load i32*, i32** %21, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 68
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i32*, i32** %20, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i32*, i32** %21, align 8
  store i32* %172, i32** %20, align 8
  br label %183

173:                                              ; preds = %168, %163
  br label %174

174:                                              ; preds = %173, %162
  br label %175

175:                                              ; preds = %174, %119
  %176 = load i32*, i32** %21, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 2, %178
  %180 = load i32*, i32** %21, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %21, align 8
  br label %88

183:                                              ; preds = %171, %159, %112, %98
  %184 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %185 = load i32*, i32** %12, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load i32*, i32** %20, align 8
  %188 = load i32*, i32** %20, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %183
  %191 = load i32*, i32** %20, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 2, %193
  br label %196

195:                                              ; preds = %183
  br label %196

196:                                              ; preds = %195, %190
  %197 = phi i32 [ %194, %190 ], [ 0, %195 ]
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %18, align 4
  %202 = call i32 @ath6kl_add_new_sta(%struct.ath6kl_vif* %184, i32* %185, i32 %186, i32* %187, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* @GFP_KERNEL, align 4
  %204 = call %struct.station_info* @kzalloc(i32 16, i32 %203)
  store %struct.station_info* %204, %struct.station_info** %23, align 8
  %205 = load %struct.station_info*, %struct.station_info** %23, align 8
  %206 = icmp ne %struct.station_info* %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %196
  br label %228

208:                                              ; preds = %196
  %209 = load i32*, i32** %19, align 8
  %210 = load %struct.station_info*, %struct.station_info** %23, align 8
  %211 = getelementptr inbounds %struct.station_info, %struct.station_info* %210, i32 0, i32 0
  store i32* %209, i32** %211, align 8
  %212 = load i64, i64* %22, align 8
  %213 = load %struct.station_info*, %struct.station_info** %23, align 8
  %214 = getelementptr inbounds %struct.station_info, %struct.station_info* %213, i32 0, i32 1
  store i64 %212, i64* %214, align 8
  %215 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %216 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %12, align 8
  %219 = load %struct.station_info*, %struct.station_info** %23, align 8
  %220 = load i32, i32* @GFP_KERNEL, align 4
  %221 = call i32 @cfg80211_new_sta(i32 %217, i32* %218, %struct.station_info* %219, i32 %220)
  %222 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %223 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @netif_wake_queue(i32 %224)
  %226 = load %struct.station_info*, %struct.station_info** %23, align 8
  %227 = call i32 @kfree(%struct.station_info* %226)
  br label %228

228:                                              ; preds = %208, %207
  ret void
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32*, i32) #1

declare dso_local i64 @ieee80211_is_assoc_req(i32) #1

declare dso_local i64 @ieee80211_is_reassoc_req(i32) #1

declare dso_local i32 @ath6kl_add_new_sta(%struct.ath6kl_vif*, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.station_info* @kzalloc(i32, i32) #1

declare dso_local i32 @cfg80211_new_sta(i32, i32*, %struct.station_info*, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @kfree(%struct.station_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
