; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_stop_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_stop_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.mwifiex_private = type { i32, i32, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to delete mgmt IEs!\0A\00", align 1
@HostCmd_CMD_UAP_BSS_STOP = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to stop the BSS\0A\00", align 1
@HOST_CMD_APCMD_SYS_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to reset BSS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*)* @mwifiex_cfg80211_stop_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_stop_ap(%struct.wiphy* %0, %struct.net_device* %1) #0 {
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
  %10 = call i32 @mwifiex_abort_cac(%struct.mwifiex_private* %9)
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %12 = call i64 @mwifiex_del_mgmt_ies(%struct.mwifiex_private* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ERROR, align 4
  %19 = call i32 @mwifiex_dbg(i32 %17, i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 2
  %25 = call i32 @memset(i32* %24, i32 0, i32 4)
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %27 = load i32, i32* @HostCmd_CMD_UAP_BSS_STOP, align 4
  %28 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %29 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %26, i32 %27, i32 %28, i32 0, i32* null, i32 1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ERROR, align 4
  %36 = call i32 @mwifiex_dbg(i32 %34, i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %68

37:                                               ; preds = %20
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %39 = load i32, i32* @HOST_CMD_APCMD_SYS_RESET, align 4
  %40 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %41 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %38, i32 %39, i32 %40, i32 0, i32* null, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %45 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ERROR, align 4
  %48 = call i32 @mwifiex_dbg(i32 %46, i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %68

49:                                               ; preds = %37
  %50 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %51 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @netif_carrier_ok(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %57 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @netif_carrier_off(i32 %58)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %62 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %65 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @mwifiex_stop_net_dev_queue(i32 %63, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %43, %31
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @mwifiex_abort_cac(%struct.mwifiex_private*) #1

declare dso_local i64 @mwifiex_del_mgmt_ies(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @mwifiex_stop_net_dev_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
