; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf5112_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf5112_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ieee80211_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR5K_RF_BUFFER = common dso_local global i32 0, align 4
@AR5K_RF_BUFFER_CONTROL_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ieee80211_channel*)* @ath5k_hw_rf5112_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rf5112_channel(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 4800
  br i1 %15, label %16, label %47

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  %18 = sub nsw i32 %17, 2224
  %19 = srem i32 %18, 5
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  %23 = sub nsw i32 %22, 704
  %24 = mul nsw i32 2, %23
  %25 = sub nsw i32 %24, 3040
  %26 = sdiv i32 %25, 10
  store i32 %26, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %42

27:                                               ; preds = %16
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %28, 2192
  %30 = srem i32 %29, 5
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %33, 672
  %35 = mul nsw i32 2, %34
  %36 = sub nsw i32 %35, 3040
  %37 = sdiv i32 %36, 10
  store i32 %37, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %126

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 2
  %45 = and i32 %44, 255
  %46 = call i32 @ath5k_hw_bitswap(i32 %45, i32 8)
  store i32 %46, i32* %7, align 4
  br label %105

47:                                               ; preds = %2
  %48 = load i32, i32* %10, align 4
  %49 = srem i32 %48, 5
  %50 = icmp ne i32 %49, 2
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = icmp sgt i32 %52, 5435
  br i1 %53, label %54, label %95

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %10, align 4
  %56 = srem i32 %55, 20
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = icmp sge i32 %59, 5120
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, 4800
  %64 = sdiv i32 %63, 20
  %65 = shl i32 %64, 2
  %66 = call i32 @ath5k_hw_bitswap(i32 %65, i32 8)
  store i32 %66, i32* %7, align 4
  %67 = call i32 @ath5k_hw_bitswap(i32 3, i32 2)
  store i32 %67, i32* %9, align 4
  br label %94

68:                                               ; preds = %58, %54
  %69 = load i32, i32* %10, align 4
  %70 = srem i32 %69, 10
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 4800
  %75 = sdiv i32 %74, 10
  %76 = shl i32 %75, 1
  %77 = call i32 @ath5k_hw_bitswap(i32 %76, i32 8)
  store i32 %77, i32* %7, align 4
  %78 = call i32 @ath5k_hw_bitswap(i32 2, i32 2)
  store i32 %78, i32* %9, align 4
  br label %93

79:                                               ; preds = %68
  %80 = load i32, i32* %10, align 4
  %81 = srem i32 %80, 5
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, 4800
  %86 = sdiv i32 %85, 5
  %87 = call i32 @ath5k_hw_bitswap(i32 %86, i32 8)
  store i32 %87, i32* %7, align 4
  %88 = call i32 @ath5k_hw_bitswap(i32 1, i32 2)
  store i32 %88, i32* %9, align 4
  br label %92

89:                                               ; preds = %79
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %126

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %72
  br label %94

94:                                               ; preds = %93, %61
  br label %104

95:                                               ; preds = %51
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %96, 2
  %98 = sub nsw i32 %97, 4800
  %99 = mul nsw i32 10, %98
  %100 = sdiv i32 %99, 25
  %101 = add nsw i32 %100, 1
  %102 = call i32 @ath5k_hw_bitswap(i32 %101, i32 8)
  store i32 %102, i32* %7, align 4
  %103 = call i32 @ath5k_hw_bitswap(i32 0, i32 2)
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %95, %94
  br label %105

105:                                              ; preds = %104, %42
  %106 = load i32, i32* %7, align 4
  %107 = shl i32 %106, 4
  %108 = load i32, i32* %8, align 4
  %109 = shl i32 %108, 1
  %110 = or i32 %107, %109
  %111 = load i32, i32* %9, align 4
  %112 = shl i32 %111, 2
  %113 = or i32 %110, %112
  %114 = or i32 %113, 4097
  store i32 %114, i32* %6, align 4
  %115 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, 255
  %118 = load i32, i32* @AR5K_RF_BUFFER, align 4
  %119 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %115, i32 %117, i32 %118)
  %120 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %121 = load i32, i32* %6, align 4
  %122 = ashr i32 %121, 8
  %123 = and i32 %122, 127
  %124 = load i32, i32* @AR5K_RF_BUFFER_CONTROL_5, align 4
  %125 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %120, i32 %123, i32 %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %105, %89, %38
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @ath5k_hw_bitswap(i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
