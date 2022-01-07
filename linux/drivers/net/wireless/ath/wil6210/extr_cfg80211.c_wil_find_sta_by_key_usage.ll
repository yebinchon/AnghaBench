; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_find_sta_by_key_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_find_sta_by_key_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil_sta_info = type { i32 }
%struct.wil6210_priv = type { %struct.wil_sta_info* }

@EINVAL = common dso_local global i32 0, align 4
@WMI_KEY_USE_TX_GROUP = common dso_local global i32 0, align 4
@WMI_KEY_USE_RX_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No CID for %pM %s\0A\00", align 1
@key_usage_str = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wil_sta_info* (%struct.wil6210_priv*, i32, i32, i32*)* @wil_find_sta_by_key_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wil_sta_info* @wil_find_sta_by_key_usage(%struct.wil6210_priv* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.wil_sta_info*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @WMI_KEY_USE_TX_GROUP, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %struct.wil_sta_info* null, %struct.wil_sta_info** %5, align 8
  br label %55

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @wil_find_cid(%struct.wil6210_priv* %21, i32 %22, i32* %23)
  store i32 %24, i32* %10, align 4
  br label %34

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @WMI_KEY_USE_RX_GROUP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @wil_find_cid_by_idx(%struct.wil6210_priv* %30, i32 %31, i32 0)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** @key_usage_str, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wil_err(%struct.wil6210_priv* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %39, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.wil_sta_info* @ERR_PTR(i32 %46)
  store %struct.wil_sta_info* %47, %struct.wil_sta_info** %5, align 8
  br label %55

48:                                               ; preds = %34
  %49 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %50 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %49, i32 0, i32 0
  %51 = load %struct.wil_sta_info*, %struct.wil_sta_info** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.wil_sta_info, %struct.wil_sta_info* %51, i64 %53
  store %struct.wil_sta_info* %54, %struct.wil_sta_info** %5, align 8
  br label %55

55:                                               ; preds = %48, %37, %16
  %56 = load %struct.wil_sta_info*, %struct.wil_sta_info** %5, align 8
  ret %struct.wil_sta_info* %56
}

declare dso_local i32 @wil_find_cid(%struct.wil6210_priv*, i32, i32*) #1

declare dso_local i32 @wil_find_cid_by_idx(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i32*, i32) #1

declare dso_local %struct.wil_sta_info* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
