; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_override_ini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_override_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_RX_DIS = common dso_local global i32 0, align 4
@AR_DIAG_RX_ABORT = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2 = common dso_local global i32 0, align 4
@AR_ADHOC_MCAST_KEYID_ENABLE = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_HWWAR1 = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_HWWAR2 = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_CFP_IGNORE = common dso_local global i32 0, align 4
@AR_PHY_HEAVY_CLIP_FACTOR_RIFS = common dso_local global i32 0, align 4
@AR_PHY_RIFS_INIT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar5008_hw_override_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_override_ini(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = load i32, i32* @AR_DIAG_SW, align 4
  %8 = load i32, i32* @AR_DIAG_RX_DIS, align 4
  %9 = load i32, i32* @AR_DIAG_RX_ABORT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @REG_SET_BIT(%struct.ath_hw* %6, i32 %7, i32 %10)
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %2
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %18 = call i32 @REG_READ(%struct.ath_hw* %16, i32 %17)
  %19 = load i32, i32* @AR_ADHOC_MCAST_KEYID_ENABLE, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = call i32 @AR_SREV_9271(%struct.ath_hw* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @AR_PCU_MISC_MODE2_HWWAR1, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %15
  %31 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %32 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @AR_PCU_MISC_MODE2_HWWAR2, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* @AR_PCU_MISC_MODE2_CFP_IGNORE, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %44 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @REG_WRITE(%struct.ath_hw* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %2
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %74

52:                                               ; preds = %47
  %53 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %54 = call i32 @REG_WRITE(%struct.ath_hw* %53, i32 41516, i32 17)
  %55 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %56 = call i64 @AR_SREV_9100(%struct.ath_hw* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %60 = call i64 @AR_SREV_9160(%struct.ath_hw* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %58, %52
  %63 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %64 = load i32, i32* @AR_PHY_HEAVY_CLIP_FACTOR_RIFS, align 4
  %65 = call i32 @REG_READ(%struct.ath_hw* %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @AR_PHY_RIFS_INIT_DELAY, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %71 = load i32, i32* @AR_PHY_HEAVY_CLIP_FACTOR_RIFS, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @REG_WRITE(%struct.ath_hw* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %51, %62, %58
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9160(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
