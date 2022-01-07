; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_htc_probe_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_htc_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, %struct.device*, %struct.htc_target*, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.device = type { i32 }

@ath9k_htc_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_htc_probe_device(%struct.htc_target* %0, %struct.device* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.htc_target*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_hw*, align 8
  %13 = alloca %struct.ath9k_htc_priv*, align 8
  %14 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 32, i32* @ath9k_htc_ops)
  store %struct.ieee80211_hw* %15, %struct.ieee80211_hw** %12, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %17 = icmp ne %struct.ieee80211_hw* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %84

21:                                               ; preds = %5
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %22, i32 0, i32 0
  %24 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %23, align 8
  store %struct.ath9k_htc_priv* %24, %struct.ath9k_htc_priv** %13, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %27 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %26, i32 0, i32 3
  store %struct.ieee80211_hw* %25, %struct.ieee80211_hw** %27, align 8
  %28 = load %struct.htc_target*, %struct.htc_target** %7, align 8
  %29 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %30 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %29, i32 0, i32 2
  store %struct.htc_target* %28, %struct.htc_target** %30, align 8
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %33 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %32, i32 0, i32 1
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %35 = load %struct.htc_target*, %struct.htc_target** %7, align 8
  %36 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %35, i32 0, i32 0
  store %struct.ath9k_htc_priv* %34, %struct.ath9k_htc_priv** %36, align 8
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %38 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %39 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %38, i32 0, i32 1
  %40 = load %struct.device*, %struct.device** %39, align 8
  %41 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %37, %struct.device* %40)
  %42 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %43 = call i32 @ath9k_htc_wait_for_target(%struct.ath9k_htc_priv* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %21
  br label %80

47:                                               ; preds = %21
  %48 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %49 = call i32 @ath9k_init_wmi(%struct.ath9k_htc_priv* %48)
  %50 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %51 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %53 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %14, align 4
  br label %80

59:                                               ; preds = %47
  %60 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @ath9k_init_htc_services(%struct.ath9k_htc_priv* %60, i32 %61, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %77

67:                                               ; preds = %59
  %68 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @ath9k_init_device(%struct.ath9k_htc_priv* %68, i32 %69, i8* %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %77

76:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %84

77:                                               ; preds = %75, %66
  %78 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  %79 = call i32 @ath9k_deinit_wmi(%struct.ath9k_htc_priv* %78)
  br label %80

80:                                               ; preds = %77, %56, %46
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %82 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %81)
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %76, %18
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, %struct.device*) #1

declare dso_local i32 @ath9k_htc_wait_for_target(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_init_wmi(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_init_htc_services(%struct.ath9k_htc_priv*, i32, i32) #1

declare dso_local i32 @ath9k_init_device(%struct.ath9k_htc_priv*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_deinit_wmi(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
