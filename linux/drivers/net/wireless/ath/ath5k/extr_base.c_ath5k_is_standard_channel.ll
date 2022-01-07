; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_is_standard_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_is_standard_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i32)* @ath5k_is_standard_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_is_standard_channel(i16 signext %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i16, i16* %4, align 2
  %11 = sext i16 %10 to i32
  %12 = icmp sle i32 %11, 14
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %86

14:                                               ; preds = %9, %2
  %15 = load i16, i16* %4, align 2
  %16 = sext i16 %15 to i32
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i16, i16* %4, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp sge i32 %21, 36
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i16, i16* %4, align 2
  %25 = sext i16 %24 to i32
  %26 = icmp sle i32 %25, 64
  br i1 %26, label %83, label %27

27:                                               ; preds = %23, %19, %14
  %28 = load i16, i16* %4, align 2
  %29 = sext i16 %28 to i32
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i16, i16* %4, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp sge i32 %34, 100
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i16, i16* %4, align 2
  %38 = sext i16 %37 to i32
  %39 = icmp sle i32 %38, 140
  br i1 %39, label %83, label %40

40:                                               ; preds = %36, %32, %27
  %41 = load i16, i16* %4, align 2
  %42 = sext i16 %41 to i32
  %43 = and i32 %42, 3
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i16, i16* %4, align 2
  %47 = sext i16 %46 to i32
  %48 = icmp sge i32 %47, 149
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i16, i16* %4, align 2
  %51 = sext i16 %50 to i32
  %52 = icmp sle i32 %51, 165
  br i1 %52, label %83, label %53

53:                                               ; preds = %49, %45, %40
  %54 = load i16, i16* %4, align 2
  %55 = sext i16 %54 to i32
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %83, label %57

57:                                               ; preds = %53
  %58 = load i16, i16* %4, align 2
  %59 = sext i16 %58 to i32
  %60 = icmp eq i32 %59, 12
  br i1 %60, label %83, label %61

61:                                               ; preds = %57
  %62 = load i16, i16* %4, align 2
  %63 = sext i16 %62 to i32
  %64 = icmp eq i32 %63, 16
  br i1 %64, label %83, label %65

65:                                               ; preds = %61
  %66 = load i16, i16* %4, align 2
  %67 = sext i16 %66 to i32
  %68 = icmp eq i32 %67, 184
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load i16, i16* %4, align 2
  %71 = sext i16 %70 to i32
  %72 = icmp eq i32 %71, 188
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load i16, i16* %4, align 2
  %75 = sext i16 %74 to i32
  %76 = icmp eq i32 %75, 192
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i16, i16* %4, align 2
  %79 = sext i16 %78 to i32
  %80 = icmp eq i32 %79, 196
  br label %81

81:                                               ; preds = %77, %73, %69, %65
  %82 = phi i1 [ true, %73 ], [ true, %69 ], [ true, %65 ], [ %80, %77 ]
  br label %83

83:                                               ; preds = %81, %61, %57, %53, %49, %36, %23
  %84 = phi i1 [ true, %61 ], [ true, %57 ], [ true, %53 ], [ true, %49 ], [ true, %36 ], [ true, %23 ], [ %82, %81 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
