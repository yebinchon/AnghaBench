; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_ssid_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_ssid_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_ssid = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_ssid_cmp(%struct.cfg80211_ssid* %0, %struct.cfg80211_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_ssid*, align 8
  %5 = alloca %struct.cfg80211_ssid*, align 8
  store %struct.cfg80211_ssid* %0, %struct.cfg80211_ssid** %4, align 8
  store %struct.cfg80211_ssid* %1, %struct.cfg80211_ssid** %5, align 8
  %6 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %4, align 8
  %7 = icmp ne %struct.cfg80211_ssid* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %5, align 8
  %10 = icmp ne %struct.cfg80211_ssid* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %4, align 8
  %13 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %5, align 8
  %16 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %8, %2
  store i32 -1, i32* %3, align 4
  br label %31

20:                                               ; preds = %11
  %21 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %4, align 8
  %22 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %5, align 8
  %25 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %4, align 8
  %28 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @memcmp(i32 %23, i32 %26, i64 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %20, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
