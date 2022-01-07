; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_tkip_micerr_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_tkip_micerr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i64, i32, %struct.ath6kl* }
%struct.ath6kl = type { i32 }
%struct.ath6kl_sta = type { i32 }

@AP_NETWORK = common dso_local global i64 0, align 8
@ATH6KL_DBG_TRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ap tkip mic error received from aid=%d\0A\00", align 1
@NL80211_KEYTYPE_PAIRWISE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_tkip_micerr_event(%struct.ath6kl_vif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath6kl_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath6kl_sta*, align 8
  %8 = alloca %struct.ath6kl*, align 8
  %9 = alloca [6 x i32], align 16
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %11 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %10, i32 0, i32 2
  %12 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  store %struct.ath6kl* %12, %struct.ath6kl** %8, align 8
  %13 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %14 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AP_NETWORK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 2
  %22 = call %struct.ath6kl_sta* @ath6kl_find_sta_by_aid(%struct.ath6kl* %19, i32 %21)
  store %struct.ath6kl_sta* %22, %struct.ath6kl_sta** %7, align 8
  %23 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %7, align 8
  %24 = icmp ne %struct.ath6kl_sta* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %48

26:                                               ; preds = %18
  %27 = load i32, i32* @ATH6KL_DBG_TRC, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ath6kl_dbg(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %31 = call i32 @memset(i32* %30, i32 0, i32 24)
  %32 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %33 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %7, align 8
  %36 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @cfg80211_michael_mic_failure(i32 %34, i32 %37, i32 %38, i32 %39, i32* %40, i32 %41)
  br label %48

43:                                               ; preds = %3
  %44 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ath6kl_cfg80211_tkip_micerr_event(%struct.ath6kl_vif* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %25, %43, %26
  ret void
}

declare dso_local %struct.ath6kl_sta* @ath6kl_find_sta_by_aid(%struct.ath6kl*, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cfg80211_michael_mic_failure(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ath6kl_cfg80211_tkip_micerr_event(%struct.ath6kl_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
