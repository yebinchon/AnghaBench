; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_create_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_create_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32 }
%struct.ar5523_cmd_create_connection = type { %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i32 }

@WDCMSG_CREATE_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*)* @ar5523_create_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_create_connection(%struct.ar5523* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2) #0 {
  %4 = alloca %struct.ar5523*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_bss_conf*, align 8
  %7 = alloca %struct.ar5523_cmd_create_connection, align 8
  %8 = alloca i32, align 4
  store %struct.ar5523* %0, %struct.ar5523** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %6, align 8
  %9 = call i32 @memset(%struct.ar5523_cmd_create_connection* %7, i32 0, i32 40)
  %10 = call i8* @cpu_to_be32(i32 2)
  %11 = getelementptr inbounds %struct.ar5523_cmd_create_connection, %struct.ar5523_cmd_create_connection* %7, i32 0, i32 3
  store i8* %10, i8** %11, align 8
  %12 = call i8* @cpu_to_be32(i32 0)
  %13 = getelementptr inbounds %struct.ar5523_cmd_create_connection, %struct.ar5523_cmd_create_connection* %7, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = call i8* @cpu_to_be32(i32 4)
  %15 = getelementptr inbounds %struct.ar5523_cmd_create_connection, %struct.ar5523_cmd_create_connection* %7, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %17 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %18 = getelementptr inbounds %struct.ar5523_cmd_create_connection, %struct.ar5523_cmd_create_connection* %7, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @ar5523_create_rateset(%struct.ar5523* %16, %struct.ieee80211_bss_conf* %17, i32* %19, i32 0)
  %21 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %22 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %23 = call i32 @ar5523_get_wlan_mode(%struct.ar5523* %21, %struct.ieee80211_bss_conf* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = getelementptr inbounds %struct.ar5523_cmd_create_connection, %struct.ar5523_cmd_create_connection* %7, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %29 = load i32, i32* @WDCMSG_CREATE_CONNECTION, align 4
  %30 = call i32 @ar5523_cmd_write(%struct.ar5523* %28, i32 %29, %struct.ar5523_cmd_create_connection* %7, i32 40, i32 0)
  ret i32 %30
}

declare dso_local i32 @memset(%struct.ar5523_cmd_create_connection*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ar5523_create_rateset(%struct.ar5523*, %struct.ieee80211_bss_conf*, i32*, i32) #1

declare dso_local i32 @ar5523_get_wlan_mode(%struct.ar5523*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @ar5523_cmd_write(%struct.ar5523*, i32, %struct.ar5523_cmd_create_connection*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
