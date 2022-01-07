; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_leave_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_leave_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.mwifiex_private = type { i32, i32 }

@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"info: disconnecting from essid %pM\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*)* @mwifiex_cfg80211_leave_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_leave_ibss(%struct.wiphy* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mwifiex_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %7)
  store %struct.mwifiex_private* %8, %struct.mwifiex_private** %6, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MSG, align 4
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mwifiex_dbg(i32 %11, i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %18 = call i64 @mwifiex_deauthenticate(%struct.mwifiex_private* %17, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @eth_zero_addr(i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32) #1

declare dso_local i64 @mwifiex_deauthenticate(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
