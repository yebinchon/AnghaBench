; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_802_11_key_material_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_802_11_key_material_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.host_cmd_ds_802_11_key_material_v2 }
%struct.host_cmd_ds_802_11_key_material_v2 = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@KEY_MCAST = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"info: key: GTK is set\0A\00", align 1
@KEY_TYPE_ID_AES = common dso_local global i64 0, align 8
@WLAN_KEY_LEN_CCMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_802_11_key_material_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_802_11_key_material_v2(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca %struct.host_cmd_ds_802_11_key_material_v2*, align 8
  %7 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  %8 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_key_material_v2* %10, %struct.host_cmd_ds_802_11_key_material_v2** %6, align 8
  %11 = load %struct.host_cmd_ds_802_11_key_material_v2*, %struct.host_cmd_ds_802_11_key_material_v2** %6, align 8
  %12 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, %struct.host_cmd_ds_802_11_key_material_v2* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le16_to_cpu(i32 %13)
  %15 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load %struct.host_cmd_ds_802_11_key_material_v2*, %struct.host_cmd_ds_802_11_key_material_v2** %6, align 8
  %19 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, %struct.host_cmd_ds_802_11_key_material_v2* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @le16_to_cpu(i32 %21)
  %23 = load i32, i32* @KEY_MCAST, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %17
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @INFO, align 4
  %31 = call i32 @mwifiex_dbg(i32 %29, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %26, %17
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.host_cmd_ds_802_11_key_material_v2*, %struct.host_cmd_ds_802_11_key_material_v2** %6, align 8
  %41 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, %struct.host_cmd_ds_802_11_key_material_v2* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KEY_TYPE_ID_AES, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %92

47:                                               ; preds = %39
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %49 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @WLAN_KEY_LEN_CCMP, align 4
  %56 = call i32 @memset(i32 %54, i32 0, i32 %55)
  %57 = load %struct.host_cmd_ds_802_11_key_material_v2*, %struct.host_cmd_ds_802_11_key_material_v2** %6, align 8
  %58 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, %struct.host_cmd_ds_802_11_key_material_v2* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %64 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 %62, i32* %68, align 4
  %69 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %70 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %77 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.host_cmd_ds_802_11_key_material_v2*, %struct.host_cmd_ds_802_11_key_material_v2** %6, align 8
  %84 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, %struct.host_cmd_ds_802_11_key_material_v2* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = call i32 @memcpy(i32 %82, i32 %88, i32 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %47, %46
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
