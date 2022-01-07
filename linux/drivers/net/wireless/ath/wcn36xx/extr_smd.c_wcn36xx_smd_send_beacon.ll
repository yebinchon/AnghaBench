; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_send_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_send_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i64, i32* }
%struct.sk_buff = type { i32*, i32 }
%struct.wcn36xx_hal_send_beacon_req_msg = type { i32, i32, i32*, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_SEND_BEACON_REQ = common dso_local global i32 0, align 4
@TIM_MIN_PVM_SIZE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@BEACON_TEMPLATE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Beacon is to big: beacon size=%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Pad TIM PVM. %d bytes at %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"hal send beacon beacon_length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Sending hal_send_beacon failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"hal_send_beacon response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_send_beacon(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wcn36xx*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wcn36xx_hal_send_beacon_req_msg, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @WCN36XX_HAL_SEND_BEACON_REQ, align 4
  %19 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_send_beacon_req_msg* byval(%struct.wcn36xx_hal_send_beacon_req_msg) align 8 %11, i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 3
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* @TIM_MIN_PVM_SIZE, align 4
  %30 = load i32, i32* %14, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %13, align 4
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %37, %5
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %41, %42
  %44 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 6
  %48 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BEACON_TEMPLATE_SIZE, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %175

59:                                               ; preds = %38
  %60 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @memcpy(i32* %61, i32* %64, i32 %67)
  %69 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = call i32 @memcpy(i32* %70, i32* %73, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %129

78:                                               ; preds = %59
  %79 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 (i32, i8*, i32, ...) @wcn36xx_dbg(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  %83 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 5
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %84, i64 %91
  %93 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 5
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %94, i64 %99
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 5
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %105, %106
  %108 = sub nsw i32 %103, %107
  %109 = call i32 @memmove(i32* %92, i32* %100, i32 %108)
  %110 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 5
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @memset(i32* %117, i32 0, i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %120
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %78, %59
  %130 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %131 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 4
  store i32 256, i32* %136, align 8
  br label %141

137:                                              ; preds = %129
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 4
  %140 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 4
  store i32 %139, i32* %140, align 8
  br label %141

141:                                              ; preds = %137, %135
  %142 = load i32, i32* %10, align 4
  %143 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 5
  store i32 %142, i32* %143, align 4
  %144 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %145 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @PREPARE_HAL_BUF(i32 %146, %struct.wcn36xx_hal_send_beacon_req_msg* byval(%struct.wcn36xx_hal_send_beacon_req_msg) align 8 %11)
  %148 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %149 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i32, i8*, i32, ...) @wcn36xx_dbg(i32 %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %153 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, %struct.wcn36xx_hal_send_beacon_req_msg* %11, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %152, i32 %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %141
  %160 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %175

161:                                              ; preds = %141
  %162 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %163 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %166 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @wcn36xx_smd_rsp_status_check(i32 %164, i32 %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %161
  %172 = load i32, i32* %12, align 4
  %173 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  br label %175

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %171, %159, %53
  %176 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %177 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %176, i32 0, i32 0
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load i32, i32* %12, align 4
  ret i32 %179
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_send_beacon_req_msg* byval(%struct.wcn36xx_hal_send_beacon_req_msg) align 8, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_send_beacon_req_msg* byval(%struct.wcn36xx_hal_send_beacon_req_msg) align 8) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_smd_rsp_status_check(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
