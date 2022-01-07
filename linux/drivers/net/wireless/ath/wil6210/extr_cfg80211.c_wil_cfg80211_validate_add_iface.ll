; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_validate_add_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_validate_add_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface_combination_params = type { i32, i32* }
%struct.wil6210_priv = type { i32, i64* }
%struct.wireless_dev = type { i64 }

@__const.wil_cfg80211_validate_add_iface.params = private unnamed_addr constant %struct.iface_combination_params { i32 1, i32* null }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i32)* @wil_cfg80211_validate_add_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_validate_add_iface(%struct.wil6210_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.iface_combination_params, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.iface_combination_params* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.iface_combination_params* @__const.wil_cfg80211_validate_add_iface.params to i8*), i64 16, i1 false)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %41, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %12 = call i32 @GET_MAX_VIFS(%struct.wil6210_priv* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %9
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %16 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %14
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %25 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.wireless_dev* @vif_to_wdev(i64 %30)
  store %struct.wireless_dev* %31, %struct.wireless_dev** %6, align 8
  %32 = getelementptr inbounds %struct.iface_combination_params, %struct.iface_combination_params* %7, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %35 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %23, %14
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %9

44:                                               ; preds = %9
  %45 = getelementptr inbounds %struct.iface_combination_params, %struct.iface_combination_params* %7, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %53 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cfg80211_check_combinations(i32 %54, %struct.iface_combination_params* %7)
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GET_MAX_VIFS(%struct.wil6210_priv*) #2

declare dso_local %struct.wireless_dev* @vif_to_wdev(i64) #2

declare dso_local i32 @cfg80211_check_combinations(i32, %struct.iface_combination_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
