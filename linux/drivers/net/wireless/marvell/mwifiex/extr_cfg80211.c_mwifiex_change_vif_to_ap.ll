; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_change_vif_to_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_change_vif_to_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vif_params = type { i32 }
%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot create multiple AP ifaces\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: changing role to AP\0A\00", align 1
@HostCmd_CMD_SET_BSS_MODE = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, %struct.vif_params*)* @mwifiex_change_vif_to_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_change_vif_to_ap(%struct.net_device* %0, i32 %1, i32 %2, %struct.vif_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vif_params*, align 8
  %10 = alloca %struct.mwifiex_private*, align 8
  %11 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.vif_params* %3, %struct.vif_params** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %12)
  store %struct.mwifiex_private* %13, %struct.mwifiex_private** %10, align 8
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %15 = icmp ne %struct.mwifiex_private* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %90

17:                                               ; preds = %4
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 0
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %19, align 8
  store %struct.mwifiex_adapter* %20, %struct.mwifiex_adapter** %11, align 8
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %22 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %26 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %32 = load i32, i32* @ERROR, align 4
  %33 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %31, i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %90

34:                                               ; preds = %17
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %36 = load i32, i32* @INFO, align 4
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %35, i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %42 = call i64 @mwifiex_deinit_priv_params(%struct.mwifiex_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %90

45:                                               ; preds = %34
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @mwifiex_init_new_priv_params(%struct.mwifiex_private* %46, %struct.net_device* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %90

52:                                               ; preds = %45
  %53 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %54 = load i32, i32* @HostCmd_CMD_SET_BSS_MODE, align 4
  %55 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %56 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %53, i32 %54, i32 %55, i32 0, i32* null, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %90

59:                                               ; preds = %52
  %60 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %61 = call i64 @mwifiex_sta_init_cmd(%struct.mwifiex_private* %60, i32 0, i32 0)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %90

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %78 [
    i32 130, label %66
    i32 129, label %66
    i32 128, label %72
    i32 131, label %72
  ]

66:                                               ; preds = %64, %64
  %67 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %68 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 4
  br label %79

72:                                               ; preds = %64, %64
  %73 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %74 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  br label %79

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %72, %66
  %80 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %81 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %79, %63, %58, %51, %44, %30, %16
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i64 @mwifiex_deinit_priv_params(%struct.mwifiex_private*) #1

declare dso_local i64 @mwifiex_init_new_priv_params(%struct.mwifiex_private*, %struct.net_device*, i32) #1

declare dso_local i64 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @mwifiex_sta_init_cmd(%struct.mwifiex_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
