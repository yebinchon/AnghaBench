; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spectral_scan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spectral_scan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_spec_scan = type { i32, i32, i32, i64, i64, i32 }

@AR_PHY_SPECTRAL_SCAN = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FFT_ENA = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_COUNT = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_PERIOD = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_FFT_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath_spec_scan*)* @ar9003_hw_spectral_scan_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_spectral_scan_config(%struct.ath_hw* %0, %struct.ath_spec_scan* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_spec_scan*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath_spec_scan* %1, %struct.ath_spec_scan** %4, align 8
  %6 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %7 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %13 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_ENABLE, align 4
  %14 = call i32 @REG_CLR_BIT(%struct.ath_hw* %11, i32 %12, i32 %13)
  br label %74

15:                                               ; preds = %2
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %18 = load i32, i32* @AR_PHY_RADAR_0_FFT_ENA, align 4
  %19 = call i32 @REG_SET_BIT(%struct.ath_hw* %16, i32 %17, i32 %18)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %22 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_ENABLE, align 4
  %23 = call i32 @REG_SET_BIT(%struct.ath_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %25 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %28 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %39

32:                                               ; preds = %15
  %33 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %34 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %32
  br label %39

39:                                               ; preds = %38, %31
  %40 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %41 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %47 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT, align 4
  %48 = call i32 @REG_SET_BIT(%struct.ath_hw* %45, i32 %46, i32 %47)
  br label %54

49:                                               ; preds = %39
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %52 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT, align 4
  %53 = call i32 @REG_CLR_BIT(%struct.ath_hw* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %56 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %57 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_COUNT, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %61 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %62 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_PERIOD, align 4
  %63 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %64 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %60, i32 %61, i32 %62, i32 %65)
  %67 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %68 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %69 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_FFT_PERIOD, align 4
  %70 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %71 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %67, i32 %68, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %54, %10
  ret void
}

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
