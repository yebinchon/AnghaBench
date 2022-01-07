; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_validate_change_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_validate_change_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface_combination_params = type { i32, i32* }
%struct.wil6210_priv = type { i32, %struct.wil6210_vif** }
%struct.wil6210_vif = type { i32 }
%struct.wireless_dev = type { i64 }

@__const.wil_cfg80211_validate_change_iface.params = private unnamed_addr constant %struct.iface_combination_params { i32 1, i32* null }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, %struct.wil6210_vif*, i32)* @wil_cfg80211_validate_change_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_validate_change_iface(%struct.wil6210_priv* %0, %struct.wil6210_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca %struct.wil6210_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca %struct.iface_combination_params, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wil6210_vif*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store %struct.wil6210_vif* %1, %struct.wil6210_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = bitcast %struct.iface_combination_params* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.iface_combination_params* @__const.wil_cfg80211_validate_change_iface.params to i8*), i64 16, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %45, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %17 = call i32 @GET_MAX_VIFS(%struct.wil6210_priv* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %14
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %21 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %20, i32 0, i32 1
  %22 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %22, i64 %24
  %26 = load %struct.wil6210_vif*, %struct.wil6210_vif** %25, align 8
  store %struct.wil6210_vif* %26, %struct.wil6210_vif** %12, align 8
  %27 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %28 = icmp ne %struct.wil6210_vif* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %19
  %30 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %31 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %32 = icmp ne %struct.wil6210_vif* %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %35 = call %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif* %34)
  store %struct.wireless_dev* %35, %struct.wireless_dev** %9, align 8
  %36 = getelementptr inbounds %struct.iface_combination_params, %struct.iface_combination_params* %10, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %39 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %33, %29, %19
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %14

48:                                               ; preds = %14
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.iface_combination_params, %struct.iface_combination_params* %10, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %60 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cfg80211_check_combinations(i32 %61, %struct.iface_combination_params* %10)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %51, %48
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GET_MAX_VIFS(%struct.wil6210_priv*) #2

declare dso_local %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif*) #2

declare dso_local i32 @cfg80211_check_combinations(i32, %struct.iface_combination_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
