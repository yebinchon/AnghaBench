; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_get_training_power_2g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_get_training_power_2g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ath9k_channel* }
%struct.ath9k_channel = type { i32 }

@AR_PHY_POWERTX_RATE5 = common dso_local global i32 0, align 4
@AR_PHY_POWERTX_RATE5_POWERTXHT20_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ar9003_get_training_power_2g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_get_training_power_2g(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 1
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  store %struct.ath9k_channel* %10, %struct.ath9k_channel** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %13 = call i32 @ar9003_get_paprd_scale_factor(%struct.ath_hw* %11, %struct.ath9k_channel* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = call i64 @AR_SREV_9330(%struct.ath_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = call i64 @AR_SREV_9340(%struct.ath_hw* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = call i64 @AR_SREV_9462(%struct.ath_hw* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = call i64 @AR_SREV_9565(%struct.ath_hw* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %21, %17, %1
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 2
  store i32 %33, i32* %5, align 4
  br label %64

34:                                               ; preds = %25
  %35 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %36 = call i64 @AR_SREV_9485(%struct.ath_hw* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 25, i32* %5, align 4
  br label %63

39:                                               ; preds = %34
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = load i32, i32* @AR_PHY_POWERTX_RATE5, align 4
  %42 = load i32, i32* @AR_PHY_POWERTX_RATE5_POWERTXHT20_0, align 4
  %43 = call i32 @REG_READ_FIELD(%struct.ath_hw* %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %46, %47
  %49 = call i32 @abs(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  br label %66

54:                                               ; preds = %39
  %55 = load i32, i32* %7, align 4
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = sub i32 4, %58
  %60 = load i32, i32* %5, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %38
  br label %64

64:                                               ; preds = %63, %29
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ar9003_get_paprd_scale_factor(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
