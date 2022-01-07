; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, %struct.wireless_dev*, i32 }
%struct.wireless_dev = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.wil6210_vif = type { i64, i64, %struct.wil_p2p_info }
%struct.wil_p2p_info = type { i32, i32, %struct.wireless_dev*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"p2p_listen: duration %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"discovery already ongoing\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Delaying p2p listen until scan done\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_p2p_listen(%struct.wil6210_priv* %0, %struct.wireless_dev* %1, i32 %2, %struct.ieee80211_channel* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wil6210_priv*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.wil6210_vif*, align 8
  %13 = alloca %struct.wil_p2p_info*, align 8
  %14 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %7, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %17 = call %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv* %15, %struct.wireless_dev* %16)
  store %struct.wil6210_vif* %17, %struct.wil6210_vif** %12, align 8
  %18 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %19 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %18, i32 0, i32 2
  store %struct.wil_p2p_info* %19, %struct.wil_p2p_info** %13, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %21 = icmp ne %struct.ieee80211_channel* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %105

25:                                               ; preds = %5
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %30 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %13, align 8
  %33 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %38 = call i32 @wil_err(%struct.wil6210_priv* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %14, align 4
  br label %100

41:                                               ; preds = %25
  %42 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %13, align 8
  %43 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %42, i32 0, i32 4
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %45 = call i32 @memcpy(i32* %43, %struct.ieee80211_channel* %44, i32 4)
  %46 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %13, align 8
  %47 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %13, align 8
  %53 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %55 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %54, i32 0, i32 2
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %58 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %41
  %62 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %63 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %65 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %13, align 8
  %66 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %65, i32 0, i32 2
  store %struct.wireless_dev* %64, %struct.wireless_dev** %66, align 8
  %67 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %13, align 8
  %68 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  store i32 0, i32* %14, align 4
  %69 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %70 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %69, i32 0, i32 2
  %71 = call i32 @mutex_unlock(i32* %70)
  br label %100

72:                                               ; preds = %41
  %73 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %74 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %73, i32 0, i32 2
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %77 = call i32 @wil_p2p_start_listen(%struct.wil6210_vif* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %100

81:                                               ; preds = %72
  %82 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %13, align 8
  %83 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %85 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %90 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %91 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %90, i32 0, i32 1
  store %struct.wireless_dev* %89, %struct.wireless_dev** %91, align 8
  br label %92

92:                                               ; preds = %88, %81
  %93 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i32 @cfg80211_ready_on_channel(%struct.wireless_dev* %93, i64 %95, %struct.ieee80211_channel* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %80, %61, %36
  %101 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %102 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %100, %22
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv*, %struct.wireless_dev*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wil_p2p_start_listen(%struct.wil6210_vif*) #1

declare dso_local i32 @cfg80211_ready_on_channel(%struct.wireless_dev*, i64, %struct.ieee80211_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
