; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_stop_radio_operations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_stop_radio_operations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.wil6210_priv = type { i64, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.wil6210_vif = type { %struct.TYPE_4__*, %struct.wil_p2p_info }
%struct.TYPE_4__ = type { i64 }
%struct.wil_p2p_info = type { i32, i32, i32 }

@__const.wil_p2p_stop_radio_operations.info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_p2p_stop_radio_operations(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca %struct.wil6210_vif*, align 8
  %4 = alloca %struct.wil_p2p_info*, align 8
  %5 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %6 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %7 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = call %struct.wil6210_vif* @ndev_to_vif(%struct.TYPE_3__* %8)
  store %struct.wil6210_vif* %9, %struct.wil6210_vif** %3, align 8
  %10 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %11 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %10, i32 0, i32 1
  store %struct.wil_p2p_info* %11, %struct.wil_p2p_info** %4, align 8
  %12 = bitcast %struct.cfg80211_scan_info* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.wil_p2p_stop_radio_operations.info to i8*), i64 4, i1 false)
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 4
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %17 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %16, i32 0, i32 3
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %20 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %23 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %83

27:                                               ; preds = %1
  %28 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %4, align 8
  %29 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %27
  %33 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %34 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %39 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %44 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %49 = call i32 @wil_abort_scan(%struct.wil6210_vif* %48, i32 1)
  br label %50

50:                                               ; preds = %47, %37, %32
  br label %83

51:                                               ; preds = %27
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %53 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %52, i32 0, i32 3
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %56 = call i32 @wil_p2p_stop_discovery(%struct.wil6210_vif* %55)
  %57 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %58 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %57, i32 0, i32 3
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %61 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %51
  %65 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %66 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i32 @cfg80211_scan_done(%struct.TYPE_4__* %67, %struct.cfg80211_scan_info* %5)
  %69 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %70 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %69, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %70, align 8
  br label %82

71:                                               ; preds = %51
  %72 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %73 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %4, align 8
  %76 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %4, align 8
  %79 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %78, i32 0, i32 0
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32 @cfg80211_remain_on_channel_expired(i64 %74, i32 %77, i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %71, %64
  br label %83

83:                                               ; preds = %82, %50, %26
  %84 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %85 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %90 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  ret void
}

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @wil_abort_scan(%struct.wil6210_vif*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wil_p2p_stop_discovery(%struct.wil6210_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_scan_done(%struct.TYPE_4__*, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @cfg80211_remain_on_channel_expired(i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
