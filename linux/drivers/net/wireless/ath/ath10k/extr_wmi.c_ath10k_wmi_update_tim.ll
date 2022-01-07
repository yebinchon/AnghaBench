; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_update_tim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_update_tim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_vif = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.sk_buff = type { i32* }
%struct.wmi_tim_info_arg = type { i64, i64*, i64, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tim_ie = type { i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"SWBA TIM field is too big (%u), truncated it to %zu\00", align 1
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@WMI_VDEV_TYPE_IBSS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"no tim ie found;\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"tim expansion failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"tim pvm length is too great (%d)\0A\00", align 1
@ATH10K_SKB_F_DTIM_ZERO = common dso_local global i32 0, align 4
@ATH10K_SKB_F_DELIVER_CAB = common dso_local global i32 0, align 4
@ATH10K_DBG_MGMT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"dtim %d/%d mcast %d pvmlen %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ath10k_vif*, %struct.sk_buff*, %struct.wmi_tim_info_arg*)* @ath10k_wmi_update_tim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_update_tim(%struct.ath10k* %0, %struct.ath10k_vif* %1, %struct.sk_buff* %2, %struct.wmi_tim_info_arg* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_vif*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.wmi_tim_info_arg*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.ieee80211_tim_ie*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ath10k_vif* %1, %struct.ath10k_vif** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.wmi_tim_info_arg* %3, %struct.wmi_tim_info_arg** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %25, %struct.ieee80211_hdr** %9, align 8
  %26 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %8, align 8
  %27 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %8, align 8
  %32 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @__le32_to_cpu(i64 %33)
  br label %36

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi i32 [ %34, %30 ], [ 1, %35 ]
  store i32 %37, i32* %17, align 4
  %38 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %8, align 8
  %39 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @__le32_to_cpu(i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %121

43:                                               ; preds = %36
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 8, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %49, i64 8)
  store i32 8, i32* %17, align 4
  br label %51

51:                                               ; preds = %47, %43
  store i32 0, i32* %18, align 4
  br label %52

52:                                               ; preds = %81, %51
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %52
  %57 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %8, align 8
  %58 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sdiv i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @__le32_to_cpu(i64 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %18, align 4
  %69 = srem i32 %68, 4
  %70 = mul nsw i32 %69, 8
  %71 = ashr i32 %67, %70
  %72 = and i32 %71, 255
  %73 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %74 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %72, i32* %80, align 4
  br label %81

81:                                               ; preds = %56
  %82 = load i32, i32* %18, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %18, align 4
  br label %52

84:                                               ; preds = %52
  %85 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %86 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 8
  store i32 0, i32* %18, align 4
  br label %89

89:                                               ; preds = %111, %84
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %95 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = load i32, i32* %18, align 4
  %106 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %107 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %93
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %18, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %18, align 4
  br label %89

114:                                              ; preds = %89
  %115 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %116 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %114, %36
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %11, align 8
  %125 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %126 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ieee80211_hdrlen(i32 %127)
  %129 = load i32*, i32** %11, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %11, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 12
  store i32* %133, i32** %11, align 8
  %134 = load i32, i32* @WLAN_EID_TIM, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = call i32* @skb_tail_pointer(%struct.sk_buff* %136)
  %138 = load i32*, i32** %11, align 8
  %139 = ptrtoint i32* %137 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  %143 = trunc i64 %142 to i32
  %144 = call i64 @cfg80211_find_ie(i32 %134, i32* %135, i32 %143)
  %145 = inttoptr i64 %144 to i32*
  store i32* %145, i32** %12, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %158, label %148

148:                                              ; preds = %121
  %149 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %150 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @WMI_VDEV_TYPE_IBSS, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %156 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %155, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %148
  br label %291

158:                                              ; preds = %121
  %159 = load i32*, i32** %12, align 8
  %160 = bitcast i32* %159 to i8*
  %161 = getelementptr i8, i8* %160, i64 2
  %162 = bitcast i8* %161 to %struct.ieee80211_tim_ie*
  store %struct.ieee80211_tim_ie* %162, %struct.ieee80211_tim_ie** %10, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = sub nsw i32 %166, 3
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %170 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %168, %173
  br i1 %174, label %175, label %224

175:                                              ; preds = %158
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %14, align 4
  %178 = sub nsw i32 %176, %177
  store i32 %178, i32* %19, align 4
  %179 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %180 = call i32* @skb_tail_pointer(%struct.sk_buff* %179)
  %181 = load i32*, i32** %12, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = ptrtoint i32* %180 to i64
  %187 = ptrtoint i32* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 4
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %20, align 4
  %191 = load i32*, i32** %12, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = bitcast i32* %195 to i8*
  store i8* %196, i8** %21, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %198 = load i32, i32* %19, align 4
  %199 = call i64 @skb_put(%struct.sk_buff* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %220

201:                                              ; preds = %175
  %202 = load i8*, i8** %21, align 8
  %203 = load i32, i32* %19, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr i8, i8* %202, i64 %204
  %206 = load i8*, i8** %21, align 8
  %207 = load i32, i32* %20, align 4
  %208 = call i32 @memmove(i8* %205, i8* %206, i32 %207)
  %209 = load i32, i32* %19, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %209
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* %13, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %14, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %14, align 4
  br label %223

220:                                              ; preds = %175
  %221 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %222 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %221, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %201
  br label %224

224:                                              ; preds = %223, %158
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* %17, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %230 = load i32, i32* %14, align 4
  %231 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %229, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %230)
  br label %291

232:                                              ; preds = %224
  %233 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %8, align 8
  %234 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @__le32_to_cpu(i64 %235)
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = xor i1 %238, true
  %240 = zext i1 %239 to i32
  %241 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %10, align 8
  %242 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %10, align 8
  %244 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %247 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = call i32 @memcpy(i32 %245, i32* %250, i32 %251)
  %253 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %10, align 8
  %254 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %277

257:                                              ; preds = %232
  %258 = load i32, i32* @ATH10K_SKB_F_DTIM_ZERO, align 4
  %259 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %260 = call %struct.TYPE_6__* @ATH10K_SKB_CB(%struct.sk_buff* %259)
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %262, %258
  store i32 %263, i32* %261, align 4
  %264 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %8, align 8
  %265 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @__le32_to_cpu(i64 %266)
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %269, label %276

269:                                              ; preds = %257
  %270 = load i32, i32* @ATH10K_SKB_F_DELIVER_CAB, align 4
  %271 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %272 = call %struct.TYPE_6__* @ATH10K_SKB_CB(%struct.sk_buff* %271)
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %270
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %269, %257
  br label %277

277:                                              ; preds = %276, %232
  %278 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %279 = load i32, i32* @ATH10K_DBG_MGMT, align 4
  %280 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %10, align 8
  %281 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %10, align 8
  %284 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %10, align 8
  %287 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* %14, align 4
  %290 = call i32 @ath10k_dbg(%struct.ath10k* %278, i32 %279, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %282, i32 %285, i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %277, %228, %157
  ret void
}

declare dso_local i32 @__le32_to_cpu(i64) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @cfg80211_find_ie(i32, i32*, i32) #1

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
