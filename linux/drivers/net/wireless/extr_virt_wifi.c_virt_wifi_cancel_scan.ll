; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_cancel_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_cancel_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.wiphy = type { i32 }
%struct.virt_wifi_wiphy_priv = type { i32*, i32 }

@__const.virt_wifi_cancel_scan.scan_info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*)* @virt_wifi_cancel_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virt_wifi_cancel_scan(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.virt_wifi_wiphy_priv*, align 8
  %4 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %5 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %6 = call %struct.virt_wifi_wiphy_priv* @wiphy_priv(%struct.wiphy* %5)
  store %struct.virt_wifi_wiphy_priv* %6, %struct.virt_wifi_wiphy_priv** %3, align 8
  %7 = load %struct.virt_wifi_wiphy_priv*, %struct.virt_wifi_wiphy_priv** %3, align 8
  %8 = getelementptr inbounds %struct.virt_wifi_wiphy_priv, %struct.virt_wifi_wiphy_priv* %7, i32 0, i32 1
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.virt_wifi_wiphy_priv*, %struct.virt_wifi_wiphy_priv** %3, align 8
  %11 = getelementptr inbounds %struct.virt_wifi_wiphy_priv, %struct.virt_wifi_wiphy_priv* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = bitcast %struct.cfg80211_scan_info* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.virt_wifi_cancel_scan.scan_info to i8*), i64 4, i1 false)
  %16 = load %struct.virt_wifi_wiphy_priv*, %struct.virt_wifi_wiphy_priv** %3, align 8
  %17 = getelementptr inbounds %struct.virt_wifi_wiphy_priv, %struct.virt_wifi_wiphy_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @cfg80211_scan_done(i32* %18, %struct.cfg80211_scan_info* %4)
  %20 = load %struct.virt_wifi_wiphy_priv*, %struct.virt_wifi_wiphy_priv** %3, align 8
  %21 = getelementptr inbounds %struct.virt_wifi_wiphy_priv, %struct.virt_wifi_wiphy_priv* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.virt_wifi_wiphy_priv* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_scan_done(i32*, %struct.cfg80211_scan_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
