; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_change_vif_to_sta_adhoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_change_vif_to_sta_adhoc.c"
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
@.str = private unnamed_addr constant [45 x i8] c"cannot create multiple station/adhoc ifaces\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: changing role to station\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: changing role to adhoc\0A\00", align 1
@HostCmd_CMD_SET_BSS_MODE = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, %struct.vif_params*)* @mwifiex_change_vif_to_sta_adhoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_change_vif_to_sta_adhoc(%struct.net_device* %0, i32 %1, i32 %2, %struct.vif_params* %3) #0 {
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
  br label %108

17:                                               ; preds = %4
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 0
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %19, align 8
  store %struct.mwifiex_adapter* %20, %struct.mwifiex_adapter** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 129
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 128
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %28 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %32 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %37, i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %108

40:                                               ; preds = %26, %23, %17
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %46 = load i32, i32* @INFO, align 4
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %45, i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %58

51:                                               ; preds = %40
  %52 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %53 = load i32, i32* @INFO, align 4
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %52, i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %51, %44
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %60 = call i64 @mwifiex_deinit_priv_params(%struct.mwifiex_private* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 -1, i32* %5, align 4
  br label %108

63:                                               ; preds = %58
  %64 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @mwifiex_init_new_priv_params(%struct.mwifiex_private* %64, %struct.net_device* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 -1, i32* %5, align 4
  br label %108

70:                                               ; preds = %63
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %72 = load i32, i32* @HostCmd_CMD_SET_BSS_MODE, align 4
  %73 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %74 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %71, i32 %72, i32 %73, i32 0, i32* null, i32 1)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 -1, i32* %5, align 4
  br label %108

77:                                               ; preds = %70
  %78 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %79 = call i64 @mwifiex_sta_init_cmd(%struct.mwifiex_private* %78, i32 0, i32 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 -1, i32* %5, align 4
  br label %108

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  switch i32 %83, label %96 [
    i32 129, label %84
    i32 128, label %84
    i32 130, label %90
  ]

84:                                               ; preds = %82, %82
  %85 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %86 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  br label %97

90:                                               ; preds = %82
  %91 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %92 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 8
  br label %97

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %90, %84
  %98 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %99 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.net_device*, %struct.net_device** %6, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %97, %81, %76, %69, %62, %36, %16
  %109 = load i32, i32* %5, align 4
  ret i32 %109
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
