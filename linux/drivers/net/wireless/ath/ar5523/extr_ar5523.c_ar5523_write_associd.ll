; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_write_associd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_write_associd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32 }
%struct.ar5523_cmd_set_associd = type { i32, i8*, i8*, i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@WDCMSG_WRITE_ASSOCID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*, %struct.ieee80211_bss_conf*)* @ar5523_write_associd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_write_associd(%struct.ar5523* %0, %struct.ieee80211_bss_conf* %1) #0 {
  %3 = alloca %struct.ar5523*, align 8
  %4 = alloca %struct.ieee80211_bss_conf*, align 8
  %5 = alloca %struct.ar5523_cmd_set_associd, align 8
  store %struct.ar5523* %0, %struct.ar5523** %3, align 8
  store %struct.ieee80211_bss_conf* %1, %struct.ieee80211_bss_conf** %4, align 8
  %6 = call i32 @memset(%struct.ar5523_cmd_set_associd* %5, i32 0, i32 32)
  %7 = call i8* @cpu_to_be32(i32 0)
  %8 = getelementptr inbounds %struct.ar5523_cmd_set_associd, %struct.ar5523_cmd_set_associd* %5, i32 0, i32 3
  store i8* %7, i8** %8, align 8
  %9 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @cpu_to_be32(i32 %11)
  %13 = getelementptr inbounds %struct.ar5523_cmd_set_associd, %struct.ar5523_cmd_set_associd* %5, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = call i8* @cpu_to_be32(i32 59)
  %15 = getelementptr inbounds %struct.ar5523_cmd_set_associd, %struct.ar5523_cmd_set_associd* %5, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.ar5523_cmd_set_associd, %struct.ar5523_cmd_set_associd* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = call i32 @memcpy(i32 %17, i32 %20, i32 %21)
  %23 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %24 = load i32, i32* @WDCMSG_WRITE_ASSOCID, align 4
  %25 = call i32 @ar5523_cmd_write(%struct.ar5523* %23, i32 %24, %struct.ar5523_cmd_set_associd* %5, i32 32, i32 0)
  ret i32 %25
}

declare dso_local i32 @memset(%struct.ar5523_cmd_set_associd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ar5523_cmd_write(%struct.ar5523*, i32, %struct.ar5523_cmd_set_associd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
