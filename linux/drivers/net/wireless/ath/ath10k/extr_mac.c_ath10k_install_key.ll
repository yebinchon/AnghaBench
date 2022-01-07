; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_install_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_install_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i64, %struct.ath10k* }
%struct.ath10k = type { i32, i32 }
%struct.ieee80211_key_conf = type { i32 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*, %struct.ieee80211_key_conf*, i32, i32*, i32)* @ath10k_install_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_install_key(%struct.ath10k_vif* %0, %struct.ieee80211_key_conf* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca %struct.ieee80211_key_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath10k*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %7, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %16 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %15, i32 0, i32 1
  %17 = load %struct.ath10k*, %struct.ath10k** %16, align 8
  store %struct.ath10k* %17, %struct.ath10k** %12, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 1
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = call i32 @reinit_completion(i32* %22)
  %24 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %25 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %52

29:                                               ; preds = %5
  %30 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %31 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ath10k_send_key(%struct.ath10k_vif* %30, %struct.ieee80211_key_conf* %31, i32 %32, i32* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %52

40:                                               ; preds = %29
  %41 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %42 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %41, i32 0, i32 0
  %43 = load i32, i32* @HZ, align 4
  %44 = mul nsw i32 3, %43
  %45 = call i64 @wait_for_completion_timeout(i32* %42, i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %52

51:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %48, %38, %28
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ath10k_send_key(%struct.ath10k_vif*, %struct.ieee80211_key_conf*, i32, i32*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
