; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_cancel_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_cancel_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i64, %struct.wil_p2p_info }
%struct.wil_p2p_info = type { i64, i32 }
%struct.wil6210_priv = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Cookie mismatch: 0x%016llx vs. 0x%016llx\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"listen not started\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_p2p_cancel_listen(%struct.wil6210_vif* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_vif*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.wil_p2p_info*, align 8
  %8 = alloca i32, align 4
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %10 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %9)
  store %struct.wil6210_priv* %10, %struct.wil6210_priv** %6, align 8
  %11 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %12 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %11, i32 0, i32 1
  store %struct.wil_p2p_info* %12, %struct.wil_p2p_info** %7, align 8
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 3
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %7, align 8
  %18 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %23 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %7, align 8
  %24 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @wil_info(%struct.wil6210_priv* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %29 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %28, i32 0, i32 3
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %76

33:                                               ; preds = %2
  %34 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %35 = call i32 @wil_p2p_stop_discovery(%struct.wil6210_vif* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %37 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %36, i32 0, i32 3
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %43 = call i32 @wil_err(%struct.wil6210_priv* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %76

46:                                               ; preds = %33
  %47 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %48 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %51 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %52 = call i32 @vif_to_radio_wdev(%struct.wil6210_priv* %50, %struct.wil6210_vif* %51)
  %53 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %7, align 8
  %54 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %7, align 8
  %57 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %56, i32 0, i32 1
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @cfg80211_remain_on_channel_expired(i32 %52, i64 %55, i32* %57, i32 %58)
  %60 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %61 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %46
  %65 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %66 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %71 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %64, %46
  %73 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %74 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %41, %21
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wil_p2p_stop_discovery(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @cfg80211_remain_on_channel_expired(i32, i64, i32*, i32) #1

declare dso_local i32 @vif_to_radio_wdev(%struct.wil6210_priv*, %struct.wil6210_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
