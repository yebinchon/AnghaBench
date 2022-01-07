; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf2425_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf2425_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ieee80211_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR5K_RF_BUFFER = common dso_local global i32 0, align 4
@AR5K_RF_BUFFER_CONTROL_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ieee80211_channel*)* @ath5k_hw_rf2425_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rf2425_channel(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 4800
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %16, 2272
  %18 = call i32 @ath5k_hw_bitswap(i32 %17, i32 8)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = srem i32 %20, 5
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 5435
  br i1 %25, label %26, label %65

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %9, align 4
  %28 = srem i32 %27, 20
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 5120
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 4800
  %36 = sdiv i32 %35, 20
  %37 = shl i32 %36, 2
  %38 = call i32 @ath5k_hw_bitswap(i32 %37, i32 8)
  store i32 %38, i32* %7, align 4
  br label %63

39:                                               ; preds = %30, %26
  %40 = load i32, i32* %9, align 4
  %41 = srem i32 %40, 10
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, 4800
  %46 = sdiv i32 %45, 10
  %47 = shl i32 %46, 1
  %48 = call i32 @ath5k_hw_bitswap(i32 %47, i32 8)
  store i32 %48, i32* %7, align 4
  br label %62

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = srem i32 %50, 5
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, 4800
  %56 = sdiv i32 %55, 5
  %57 = call i32 @ath5k_hw_bitswap(i32 %56, i32 8)
  store i32 %57, i32* %7, align 4
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %93

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %33
  %64 = call i32 @ath5k_hw_bitswap(i32 1, i32 2)
  store i32 %64, i32* %8, align 4
  br label %74

65:                                               ; preds = %23
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 2
  %68 = sub nsw i32 %67, 4800
  %69 = mul nsw i32 10, %68
  %70 = sdiv i32 %69, 25
  %71 = add nsw i32 %70, 1
  %72 = call i32 @ath5k_hw_bitswap(i32 %71, i32 8)
  store i32 %72, i32* %7, align 4
  %73 = call i32 @ath5k_hw_bitswap(i32 0, i32 2)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %65, %63
  br label %75

75:                                               ; preds = %74, %15
  %76 = load i32, i32* %7, align 4
  %77 = shl i32 %76, 4
  %78 = load i32, i32* %8, align 4
  %79 = shl i32 %78, 2
  %80 = or i32 %77, %79
  %81 = or i32 %80, 4097
  store i32 %81, i32* %6, align 4
  %82 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 255
  %85 = load i32, i32* @AR5K_RF_BUFFER, align 4
  %86 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %82, i32 %84, i32 %85)
  %87 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = ashr i32 %88, 8
  %90 = and i32 %89, 127
  %91 = load i32, i32* @AR5K_RF_BUFFER_CONTROL_5, align 4
  %92 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %87, i32 %90, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %75, %58
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @ath5k_hw_bitswap(i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
