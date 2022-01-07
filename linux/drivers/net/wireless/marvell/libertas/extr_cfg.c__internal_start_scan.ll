; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c__internal_start_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c__internal_start_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, %struct.cfg80211_scan_request*, i64 }
%struct.cfg80211_scan_request = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"scan: ssids %d, channels %d, ie_len %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, i32, %struct.cfg80211_scan_request*)* @_internal_start_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_internal_start_scan(%struct.lbs_private* %0, i32 %1, %struct.cfg80211_scan_request* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_scan_request*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cfg80211_scan_request* %2, %struct.cfg80211_scan_request** %6, align 8
  %7 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %8 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %11 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %14 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lbs_deb_scan(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  %17 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %18 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %20 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 3
  store %struct.cfg80211_scan_request* %19, %struct.cfg80211_scan_request** %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %29 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %28, i32 0, i32 1
  %30 = call i32 @msecs_to_jiffies(i32 50)
  %31 = call i32 @queue_delayed_work(i32 %27, i32* %29, i32 %30)
  ret void
}

declare dso_local i32 @lbs_deb_scan(i8*, i32, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
