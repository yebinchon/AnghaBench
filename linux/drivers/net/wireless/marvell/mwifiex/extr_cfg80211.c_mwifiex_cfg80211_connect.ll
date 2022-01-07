; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_connect_params = type { i32, i32, i64, i64 }
%struct.mwifiex_private = type { i32, i64, i32, i32, %struct.mwifiex_adapter*, i32, %struct.TYPE_2__ }
%struct.mwifiex_adapter = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@MWIFIEX_BSS_ROLE_STA = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: reject infra assoc request in non-STA role\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: already connected\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@MWIFIEX_SURPRISE_REMOVED = common dso_local global i32 0, align 4
@MWIFIEX_IS_CMD_TIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"%s: Ignore connection.\09Card removed or FW in bad state\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"info: Trying to associate to %.*s and bssid %pM\0A\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MSG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"info: associated to bssid %pM successfully\0A\00", align 1
@MWIFIEX_BSS_TYPE_STA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"info: association to bssid %pM failed\0A\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_connect_params*)* @mwifiex_cfg80211_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_connect(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_connect_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_connect_params*, align 8
  %8 = alloca %struct.mwifiex_private*, align 8
  %9 = alloca %struct.mwifiex_adapter*, align 8
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_connect_params* %2, %struct.cfg80211_connect_params** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %11)
  store %struct.mwifiex_private* %12, %struct.mwifiex_private** %8, align 8
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 4
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  store %struct.mwifiex_adapter* %15, %struct.mwifiex_adapter** %9, align 8
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %17 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %16)
  %18 = load i64, i64* @MWIFIEX_BSS_ROLE_STA, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %22 = load i32, i32* @ERROR, align 4
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %21, i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %197

29:                                               ; preds = %3
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %37 = load i32, i32* @ERROR, align 4
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %36, i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EALREADY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %197

44:                                               ; preds = %29
  %45 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %46 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %51 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* @MWIFIEX_SURPRISE_REMOVED, align 4
  %54 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %55 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %54, i32 0, i32 2
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @MWIFIEX_IS_CMD_TIMEDOUT, align 4
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %60, i32 0, i32 2
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58, %52
  %65 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %66 = load i32, i32* @ERROR, align 4
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %65, i32 %66, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EFAULT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %197

73:                                               ; preds = %58
  %74 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %75 = load i32, i32* @INFO, align 4
  %76 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %77 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %81 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %85 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %74, i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %79, i8* %83, i32 %86)
  %88 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %89 = call i32 @mwifiex_stop_bg_scan(%struct.mwifiex_private* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %73
  %92 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %93 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @cfg80211_sched_scan_stopped_rtnl(i32 %95, i32 0)
  br label %97

97:                                               ; preds = %91, %73
  %98 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %99 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %100 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %103 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %106 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %109 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %112 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %115 = call i32 @mwifiex_cfg80211_assoc(%struct.mwifiex_private* %98, i64 %101, i64 %104, i32 %107, i32 %110, i32 %113, %struct.cfg80211_connect_params* %114, i32 0)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %160, label %118

118:                                              ; preds = %97
  %119 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %120 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %123 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call i32 @cfg80211_connect_result(i32 %121, i32 %124, i32* null, i32 0, i32* null, i32 0, i32 %125, i32 %126)
  %128 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %129 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %128, i32 0, i32 4
  %130 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %129, align 8
  %131 = load i32, i32* @MSG, align 4
  %132 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %133 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %130, i32 %131, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %137 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %136, i32 0, i32 4
  %138 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %137, align 8
  %139 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @ISSUPP_TDLS_ENABLED(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %118
  %144 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %145 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %144, i32 0, i32 4
  %146 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %145, align 8
  %147 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %143
  %151 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %152 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @MWIFIEX_BSS_TYPE_STA, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %158 = call i32 @mwifiex_setup_auto_tdls_timer(%struct.mwifiex_private* %157)
  br label %159

159:                                              ; preds = %156, %150, %143, %118
  br label %196

160:                                              ; preds = %97
  %161 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %162 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %161, i32 0, i32 4
  %163 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %162, align 8
  %164 = load i32, i32* @ERROR, align 4
  %165 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %166 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %163, i32 %164, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  %169 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %170 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @eth_zero_addr(i32 %171)
  %173 = load i32, i32* %10, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %160
  %176 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %177 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %180 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @GFP_KERNEL, align 4
  %184 = call i32 @cfg80211_connect_result(i32 %178, i32 %181, i32* null, i32 0, i32* null, i32 0, i32 %182, i32 %183)
  br label %195

185:                                              ; preds = %160
  %186 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %187 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %190 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  %193 = load i32, i32* @GFP_KERNEL, align 4
  %194 = call i32 @cfg80211_connect_result(i32 %188, i32 %191, i32* null, i32 0, i32* null, i32 0, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %185, %175
  br label %196

196:                                              ; preds = %195, %159
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %196, %64, %35, %20
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_stop_bg_scan(%struct.mwifiex_private*) #1

declare dso_local i32 @cfg80211_sched_scan_stopped_rtnl(i32, i32) #1

declare dso_local i32 @mwifiex_cfg80211_assoc(%struct.mwifiex_private*, i64, i64, i32, i32, i32, %struct.cfg80211_connect_params*, i32) #1

declare dso_local i32 @cfg80211_connect_result(i32, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @ISSUPP_TDLS_ENABLED(i32) #1

declare dso_local i32 @mwifiex_setup_auto_tdls_timer(%struct.mwifiex_private*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
