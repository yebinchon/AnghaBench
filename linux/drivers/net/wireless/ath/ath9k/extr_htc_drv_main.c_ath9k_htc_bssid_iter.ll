; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_bssid_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_bssid_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ath9k_vif_iter_data = type { i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @ath9k_htc_bssid_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_bssid_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ath9k_vif_iter_data*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ath9k_vif_iter_data*
  store %struct.ath9k_vif_iter_data* %10, %struct.ath9k_vif_iter_data** %7, align 8
  %11 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %12 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %47

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %43, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %22 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %27, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %36 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %34
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %20
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %16

46:                                               ; preds = %16
  br label %51

47:                                               ; preds = %3
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %50 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %47, %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
