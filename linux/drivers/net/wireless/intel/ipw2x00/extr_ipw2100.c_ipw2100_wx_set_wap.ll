; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_wap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.ipw2100_priv = type { i32, i32, i32, i32 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"exit - disable mandatory BSSID\0A\00", align 1
@CFG_STATIC_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"SET BSSID -> %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_wap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_wap(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %12)
  store %struct.ipw2100_priv* %13, %struct.ipw2100_priv** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %15 = bitcast %union.iwreq_data* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ARPHRD_ETHER, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %91

23:                                               ; preds = %4
  %24 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %25 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %28 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @STATUS_INITIALIZED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %86

36:                                               ; preds = %23
  %37 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %38 = bitcast %union.iwreq_data* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @is_broadcast_ether_addr(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %45 = bitcast %union.iwreq_data* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @is_zero_ether_addr(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43, %36
  %51 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %55 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %59 = call i32 @ipw2100_set_mandatory_bssid(%struct.ipw2100_priv* %58, i32* null, i32 0)
  store i32 %59, i32* %11, align 4
  br label %86

60:                                               ; preds = %43
  %61 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %62 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %63 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %67 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %70 = bitcast %union.iwreq_data* %69 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memcpy(i32 %68, i32* %72, i32 %73)
  %75 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %76 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %77 = bitcast %union.iwreq_data* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @ipw2100_set_mandatory_bssid(%struct.ipw2100_priv* %75, i32* %79, i32 0)
  store i32 %80, i32* %11, align 4
  %81 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %82 = bitcast %union.iwreq_data* %81 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %84)
  br label %86

86:                                               ; preds = %60, %50, %33
  %87 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %88 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %86, %20
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @ipw2100_set_mandatory_bssid(%struct.ipw2100_priv*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
