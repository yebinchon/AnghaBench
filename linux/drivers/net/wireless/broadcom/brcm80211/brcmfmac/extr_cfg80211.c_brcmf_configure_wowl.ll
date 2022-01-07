; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_configure_wowl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_configure_wowl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.TYPE_8__, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.brcmf_if = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.cfg80211_wowlan = type { i64, i64, i64, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32, i64, i32, i64 }
%struct.brcmf_wowl_wakeind_le = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Suspend, wowl config.\0A\00", align 1
@BRCMF_FEAT_WOWL_ARP_ND = common dso_local global i32 0, align 4
@BRCMF_C_GET_PM = common dso_local global i32 0, align 4
@BRCMF_C_SET_PM = common dso_local global i32 0, align 4
@PM_MAX = common dso_local global i32 0, align 4
@BRCMF_WOWL_DIS = common dso_local global i64 0, align 8
@BRCMF_WOWL_BCN = common dso_local global i64 0, align 8
@BRCMF_WOWL_RETR = common dso_local global i64 0, align 8
@BRCMF_WOWL_MAGIC = common dso_local global i64 0, align 8
@BRCMF_WOWL_NET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@BRCMF_WOWL_PFN_FOUND = common dso_local global i64 0, align 8
@BRCMF_E_PFN_NET_FOUND = common dso_local global i32 0, align 4
@brcmf_wowl_nd_results = common dso_local global i32 0, align 4
@BRCMF_WOWL_GTK_FAILURE = common dso_local global i64 0, align 8
@BRCMF_VIF_STATUS_CONNECTED = common dso_local global i32 0, align 4
@BRCMF_WOWL_UNASSOC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"wowl_wakeind\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wowl\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"wowl_activate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_cfg80211_info*, %struct.brcmf_if*, %struct.cfg80211_wowlan*)* @brcmf_configure_wowl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_configure_wowl(%struct.brcmf_cfg80211_info* %0, %struct.brcmf_if* %1, %struct.cfg80211_wowlan* %2) #0 {
  %4 = alloca %struct.brcmf_cfg80211_info*, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.cfg80211_wowlan*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.brcmf_wowl_wakeind_le, align 4
  %9 = alloca i64, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %4, align 8
  store %struct.brcmf_if* %1, %struct.brcmf_if** %5, align 8
  store %struct.cfg80211_wowlan* %2, %struct.cfg80211_wowlan** %6, align 8
  %10 = load i32, i32* @TRACE, align 4
  %11 = call i32 @brcmf_dbg(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %13 = load i32, i32* @BRCMF_FEAT_WOWL_ARP_ND, align 4
  %14 = call i32 @brcmf_feat_is_enabled(%struct.brcmf_if* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %18 = call i32 @brcmf_configure_arp_nd_offload(%struct.brcmf_if* %17, i32 0)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %21 = load i32, i32* @BRCMF_C_GET_PM, align 4
  %22 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = call i32 @brcmf_fil_cmd_int_get(%struct.brcmf_if* %20, i32 %21, i32* %24)
  %26 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %27 = load i32, i32* @BRCMF_C_SET_PM, align 4
  %28 = load i32, i32* @PM_MAX, align 4
  %29 = call i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %26, i32 %27, i32 %28)
  store i64 0, i64* %7, align 8
  %30 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %31 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %19
  %35 = load i64, i64* @BRCMF_WOWL_DIS, align 8
  %36 = load i64, i64* @BRCMF_WOWL_BCN, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* @BRCMF_WOWL_RETR, align 8
  %39 = or i64 %37, %38
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %34, %19
  %41 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %42 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i64, i64* @BRCMF_WOWL_MAGIC, align 8
  %47 = load i64, i64* %7, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %51 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %106

54:                                               ; preds = %49
  %55 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %56 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %106

59:                                               ; preds = %54
  %60 = load i64, i64* @BRCMF_WOWL_NET, align 8
  %61 = load i64, i64* %7, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %63

63:                                               ; preds = %102, %59
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %66 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %63
  %70 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %71 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %72 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %71, i32 0, i32 3
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %80 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %79, i32 0, i32 3
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %87 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %95 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @brcmf_config_wowl_pattern(%struct.brcmf_if* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %78, i32 %85, i32* %93, i32 %100)
  br label %102

102:                                              ; preds = %69
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %9, align 8
  br label %63

105:                                              ; preds = %63
  br label %106

106:                                              ; preds = %105, %54, %49
  %107 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %108 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %142

111:                                              ; preds = %106
  %112 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %113 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %116 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %119 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @brcmf_cfg80211_sched_scan_start(i32 %114, i32 %117, i64 %120)
  %122 = load i64, i64* @BRCMF_WOWL_PFN_FOUND, align 8
  %123 = load i64, i64* %7, align 8
  %124 = or i64 %123, %122
  store i64 %124, i64* %7, align 8
  %125 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %126 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  %128 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %129 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %132 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %131, i32 0, i32 1
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load i32, i32* @BRCMF_E_PFN_NET_FOUND, align 4
  %135 = call i32 @brcmf_fweh_unregister(%struct.TYPE_9__* %133, i32 %134)
  %136 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %137 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %136, i32 0, i32 1
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = load i32, i32* @BRCMF_E_PFN_NET_FOUND, align 4
  %140 = load i32, i32* @brcmf_wowl_nd_results, align 4
  %141 = call i32 @brcmf_fweh_register(%struct.TYPE_9__* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %111, %106
  %143 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %144 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i64, i64* @BRCMF_WOWL_GTK_FAILURE, align 8
  %149 = load i64, i64* %7, align 8
  %150 = or i64 %149, %148
  store i64 %150, i64* %7, align 8
  br label %151

151:                                              ; preds = %147, %142
  %152 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTED, align 4
  %153 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %154 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %153, i32 0, i32 0
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = call i32 @test_bit(i32 %152, i32* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %151
  %160 = load i64, i64* @BRCMF_WOWL_UNASSOC, align 8
  %161 = load i64, i64* %7, align 8
  %162 = or i64 %161, %160
  store i64 %162, i64* %7, align 8
  br label %163

163:                                              ; preds = %159, %151
  %164 = call i32 @memcpy(%struct.brcmf_wowl_wakeind_le* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %165 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %166 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.brcmf_wowl_wakeind_le* %8, i32 4)
  %167 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %168 = load i64, i64* %7, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  %171 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %172 = call i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %171, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %173 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %174 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %173, i32 0, i32 1
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @brcmf_bus_wowl_config(i32 %177, i32 1)
  %179 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %180 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i32 1, i32* %181, align 8
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_feat_is_enabled(%struct.brcmf_if*, i32) #1

declare dso_local i32 @brcmf_configure_arp_nd_offload(%struct.brcmf_if*, i32) #1

declare dso_local i32 @brcmf_fil_cmd_int_get(%struct.brcmf_if*, i32, i32*) #1

declare dso_local i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @brcmf_config_wowl_pattern(%struct.brcmf_if*, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @brcmf_cfg80211_sched_scan_start(i32, i32, i64) #1

declare dso_local i32 @brcmf_fweh_unregister(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @brcmf_fweh_register(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(%struct.brcmf_wowl_wakeind_le*, i8*, i32) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_wowl_wakeind_le*, i32) #1

declare dso_local i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if*, i8*, i32) #1

declare dso_local i32 @brcmf_bus_wowl_config(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
