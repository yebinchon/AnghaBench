; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_set_basic_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_set_basic_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32 }
%struct.ieee80211_bss_conf = type { i32 }
%struct.ar5523_cmd_rates = type { i32, i8*, i8* }

@WDCMSG_SET_BASIC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*, %struct.ieee80211_bss_conf*)* @ar5523_set_basic_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_set_basic_rates(%struct.ar5523* %0, %struct.ieee80211_bss_conf* %1) #0 {
  %3 = alloca %struct.ar5523*, align 8
  %4 = alloca %struct.ieee80211_bss_conf*, align 8
  %5 = alloca %struct.ar5523_cmd_rates, align 8
  store %struct.ar5523* %0, %struct.ar5523** %3, align 8
  store %struct.ieee80211_bss_conf* %1, %struct.ieee80211_bss_conf** %4, align 8
  %6 = call i32 @memset(%struct.ar5523_cmd_rates* %5, i32 0, i32 24)
  %7 = call i8* @cpu_to_be32(i32 2)
  %8 = getelementptr inbounds %struct.ar5523_cmd_rates, %struct.ar5523_cmd_rates* %5, i32 0, i32 2
  store i8* %7, i8** %8, align 8
  %9 = call i8* @cpu_to_be32(i32 4)
  %10 = getelementptr inbounds %struct.ar5523_cmd_rates, %struct.ar5523_cmd_rates* %5, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %12 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %13 = getelementptr inbounds %struct.ar5523_cmd_rates, %struct.ar5523_cmd_rates* %5, i32 0, i32 0
  %14 = call i32 @ar5523_create_rateset(%struct.ar5523* %11, %struct.ieee80211_bss_conf* %12, i32* %13, i32 1)
  %15 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %16 = load i32, i32* @WDCMSG_SET_BASIC_RATE, align 4
  %17 = call i32 @ar5523_cmd_write(%struct.ar5523* %15, i32 %16, %struct.ar5523_cmd_rates* %5, i32 24, i32 0)
  ret i32 %17
}

declare dso_local i32 @memset(%struct.ar5523_cmd_rates*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ar5523_create_rateset(%struct.ar5523*, %struct.ieee80211_bss_conf*, i32*, i32) #1

declare dso_local i32 @ar5523_cmd_write(%struct.ar5523*, i32, %struct.ar5523_cmd_rates*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
