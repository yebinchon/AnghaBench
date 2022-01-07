; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_htcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_htcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, %struct.TYPE_2__*, %struct.ath6kl_htcap* }
%struct.TYPE_2__ = type { i32 }
%struct.ath6kl_htcap = type { i32, i32, i32 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@ath6kl_g_htcap = common dso_local global i32 0, align 4
@ath6kl_a_htcap = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_16K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*, i32, i32)* @ath6kl_set_htcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_set_htcap(%struct.ath6kl_vif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath6kl_htcap*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %10 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %9, i32 0, i32 2
  %11 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ath6kl_htcap, %struct.ath6kl_htcap* %11, i64 %13
  store %struct.ath6kl_htcap* %14, %struct.ath6kl_htcap** %8, align 8
  %15 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %8, align 8
  %16 = getelementptr inbounds %struct.ath6kl_htcap, %struct.ath6kl_htcap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %8, align 8
  %26 = getelementptr inbounds %struct.ath6kl_htcap, %struct.ath6kl_htcap* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @ath6kl_g_htcap, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @ath6kl_a_htcap, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %8, align 8
  %37 = getelementptr inbounds %struct.ath6kl_htcap, %struct.ath6kl_htcap* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_16K, align 4
  %39 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %8, align 8
  %40 = getelementptr inbounds %struct.ath6kl_htcap, %struct.ath6kl_htcap* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %44

41:                                               ; preds = %21
  %42 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %8, align 8
  %43 = call i32 @memset(%struct.ath6kl_htcap* %42, i32 0, i32 12)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %46 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %51 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %8, align 8
  %55 = call i32 @ath6kl_wmi_set_htcap_cmd(i32 %49, i32 %52, i32 %53, %struct.ath6kl_htcap* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %44, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.ath6kl_htcap*, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_set_htcap_cmd(i32, i32, i32, %struct.ath6kl_htcap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
