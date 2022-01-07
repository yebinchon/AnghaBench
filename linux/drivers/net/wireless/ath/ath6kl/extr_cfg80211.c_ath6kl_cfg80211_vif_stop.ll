; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_vif_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_vif_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.ath6kl_vif = type { i32, i32*, i32*, i32, i32, i32 }

@ath6kl_cfg80211_vif_stop.bcast_mac = internal global [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@WLAN_ENABLED = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i32 0, align 4
@CONNECT_PEND = common dso_local global i32 0, align 4
@DISCONNECT_CMD = common dso_local global i32 0, align 4
@AP_NETWORK = common dso_local global i32 0, align 4
@__const.ath6kl_cfg80211_vif_stop.info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_cfg80211_vif_stop(%struct.ath6kl_vif* %0, i32 %1) #0 {
  %3 = alloca %struct.ath6kl_vif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %8 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @netif_stop_queue(i32 %9)
  %11 = load i32, i32* @WLAN_ENABLED, align 4
  %12 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %13 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %12, i32 0, i32 4
  %14 = call i32 @clear_bit(i32 %11, i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %2
  %18 = load i32, i32* @CONNECTED, align 4
  %19 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %20 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %19, i32 0, i32 4
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @CONNECT_PEND, align 4
  %25 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %26 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %25, i32 0, i32 4
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i1 [ true, %17 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %33 = call i32 @ath6kl_disconnect(%struct.ath6kl_vif* %32)
  %34 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %35 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %34, i32 0, i32 3
  %36 = call i32 @del_timer(i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %29
  %40 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %41 = load i32, i32* @DISCONNECT_CMD, align 4
  %42 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %43 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AP_NETWORK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %51 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  br label %53

53:                                               ; preds = %49, %48
  %54 = phi i32* [ getelementptr inbounds ([6 x i32], [6 x i32]* @ath6kl_cfg80211_vif_stop.bcast_mac, i64 0, i64 0), %48 ], [ %52, %49 ]
  %55 = call i32 @ath6kl_disconnect_event(%struct.ath6kl_vif* %40, i32 %41, i32* %54, i32 0, i32* null, i32 0)
  br label %56

56:                                               ; preds = %53, %29
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %59 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = bitcast %struct.cfg80211_scan_info* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.ath6kl_cfg80211_vif_stop.info to i8*), i64 4, i1 false)
  %64 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %65 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @cfg80211_scan_done(i32* %66, %struct.cfg80211_scan_info* %6)
  %68 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %69 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %68, i32 0, i32 2
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %62, %57
  %71 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %72 = call i32 @ath6kl_cfg80211_sta_bmiss_enhance(%struct.ath6kl_vif* %71, i32 0)
  ret void
}

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_disconnect(%struct.ath6kl_vif*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @ath6kl_disconnect_event(%struct.ath6kl_vif*, i32, i32*, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_scan_done(i32*, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @ath6kl_cfg80211_sta_bmiss_enhance(%struct.ath6kl_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
