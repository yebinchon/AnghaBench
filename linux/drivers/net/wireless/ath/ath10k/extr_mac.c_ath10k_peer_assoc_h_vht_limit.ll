; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_h_vht_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_h_vht_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NL80211_VHT_NSS_MAX = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_7 = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_8 = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ath10k_peer_assoc_h_vht_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_peer_assoc_h_vht_limit(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @NL80211_VHT_NSS_MAX, align 4
  %10 = zext i32 %9 to i64
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %58, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NL80211_VHT_NSS_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ath10k_mac_get_max_vht_mcs_map(i32 %16, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %18, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @fls(i32 %28)
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %35 [
    i32 0, label %34
    i32 1, label %34
    i32 2, label %34
    i32 3, label %34
    i32 4, label %34
    i32 5, label %34
    i32 6, label %34
    i32 -1, label %37
    i32 7, label %39
    i32 8, label %41
    i32 9, label %43
  ]

34:                                               ; preds = %32, %32, %32, %32, %32, %32, %32
  br label %35

35:                                               ; preds = %32, %34
  %36 = call i32 @WARN_ON(i32 1)
  br label %37

37:                                               ; preds = %32, %35
  %38 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  store i32 %38, i32* %8, align 4
  br label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_7, align 4
  store i32 %40, i32* %8, align 4
  br label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_8, align 4
  store i32 %42, i32* %8, align 4
  br label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %41, %39, %37
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 2
  %48 = shl i32 3, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %53, 2
  %55 = shl i32 %52, %54
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %11

61:                                               ; preds = %11
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ath10k_mac_get_max_vht_mcs_map(i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
