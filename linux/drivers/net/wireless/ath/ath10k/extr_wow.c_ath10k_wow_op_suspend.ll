; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_wow_op_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_wow_op_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_wowlan = type { i32 }

@ATH10K_FW_FEATURE_WOWLAN_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to clear wow wakeup events: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to set wow wakeup events: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to start wow: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to suspend hif: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wow_op_suspend(%struct.ieee80211_hw* %0, %struct.cfg80211_wowlan* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.cfg80211_wowlan*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %5, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @ATH10K_FW_FEATURE_WOWLAN_SUPPORT, align 4
  %14 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @test_bit(i32 %13, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %73

27:                                               ; preds = %2
  %28 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %29 = call i32 @ath10k_wow_cleanup(%struct.ath10k* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ath10k_warn(%struct.ath10k* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %73

36:                                               ; preds = %27
  %37 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %38 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %4, align 8
  %39 = call i32 @ath10k_wow_set_wakeups(%struct.ath10k* %37, %struct.cfg80211_wowlan* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ath10k_warn(%struct.ath10k* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %70

46:                                               ; preds = %36
  %47 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %48 = call i32 @ath10k_mac_wait_tx_complete(%struct.ath10k* %47)
  %49 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %50 = call i32 @ath10k_wow_enable(%struct.ath10k* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @ath10k_warn(%struct.ath10k* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %70

57:                                               ; preds = %46
  %58 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %59 = call i32 @ath10k_hif_suspend(%struct.ath10k* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ath10k_warn(%struct.ath10k* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %67

66:                                               ; preds = %57
  br label %73

67:                                               ; preds = %62
  %68 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %69 = call i32 @ath10k_wow_wakeup(%struct.ath10k* %68)
  br label %70

70:                                               ; preds = %67, %53, %42
  %71 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %72 = call i32 @ath10k_wow_cleanup(%struct.ath10k* %71)
  br label %73

73:                                               ; preds = %70, %66, %32, %26
  %74 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %75 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  ret i32 %80
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ath10k_wow_cleanup(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_wow_set_wakeups(%struct.ath10k*, %struct.cfg80211_wowlan*) #1

declare dso_local i32 @ath10k_mac_wait_tx_complete(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wow_enable(%struct.ath10k*) #1

declare dso_local i32 @ath10k_hif_suspend(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wow_wakeup(%struct.ath10k*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
