; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_wap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ipw_priv = type { i32, i32, i32 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Setting AP BSSID to ANY\0A\00", align 1
@CFG_STATIC_BSSID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Attempting to associate with new parameters.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"BSSID set to current BSSID.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Setting mandatory BSSID to %pM\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"[re]association triggered due to BSSID change.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_wap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_wap(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %11)
  store %struct.ipw_priv* %12, %struct.ipw_priv** %10, align 8
  %13 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %14 = bitcast %union.iwreq_data* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ARPHRD_ETHER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %99

22:                                               ; preds = %4
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %24 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %27 = bitcast %union.iwreq_data* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @is_broadcast_ether_addr(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %22
  %33 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %34 = bitcast %union.iwreq_data* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @is_zero_ether_addr(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %32, %22
  %40 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %44 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = call i32 @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %49 = call i32 @ipw_associate(%struct.ipw_priv* %48)
  %50 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %51 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  store i32 0, i32* %5, align 4
  br label %99

53:                                               ; preds = %32
  %54 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %55 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %56 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %60 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %63 = bitcast %union.iwreq_data* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ether_addr_equal(i32 %61, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %53
  %69 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %71 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  store i32 0, i32* %5, align 4
  br label %99

73:                                               ; preds = %53
  %74 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %75 = bitcast %union.iwreq_data* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %80 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %83 = bitcast %union.iwreq_data* %82 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ETH_ALEN, align 4
  %87 = call i32 @memcpy(i32 %81, i32 %85, i32 %86)
  %88 = call i32 @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %90 = call i32 @ipw_disassociate(%struct.ipw_priv* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %73
  %93 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %94 = call i32 @ipw_associate(%struct.ipw_priv* %93)
  br label %95

95:                                               ; preds = %92, %73
  %96 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %97 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %68, %39, %19
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @IPW_DEBUG_ASSOC(i8*) #1

declare dso_local i32 @ipw_associate(%struct.ipw_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ipw_disassociate(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
