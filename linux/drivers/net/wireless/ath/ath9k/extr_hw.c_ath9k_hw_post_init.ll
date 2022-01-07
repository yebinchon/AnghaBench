; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_post_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.ath_hw*, i32)*, {}*, {}* }
%struct.ath_common = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@ATH_USB = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Eeprom VER: %d, REV: %d\0A\00", align 1
@EEP_REG_0 = common dso_local global i32 0, align 4
@CTL_FCC = common dso_local global i32 0, align 4
@AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_post_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_post_init(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %7)
  store %struct.ath_common* %8, %struct.ath_common** %4, align 8
  %9 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %10 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ATH_USB, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = call i32 @ath9k_hw_chip_test(%struct.ath_hw* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %93

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = call i32 @ar9002_hw_rf_claim(%struct.ath_hw* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %93

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = call i32 @ath9k_hw_eeprom_init(%struct.ath_hw* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %93

43:                                               ; preds = %36
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %44)
  %46 = load i32, i32* @CONFIG, align 4
  %47 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = bitcast {}** %50 to i32 (%struct.ath_hw*)**
  %52 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %51, align 8
  %53 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %54 = call i32 %52(%struct.ath_hw* %53)
  %55 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %56 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = bitcast {}** %58 to i32 (%struct.ath_hw*)**
  %60 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %59, align 8
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = call i32 %60(%struct.ath_hw* %61)
  %63 = call i32 @ath_dbg(%struct.ath_common* %45, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %62)
  %64 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %65 = call i32 @ath9k_hw_ani_init(%struct.ath_hw* %64)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %43
  %70 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %73, align 8
  %75 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %76 = load i32, i32* @EEP_REG_0, align 4
  %77 = call i32 %74(%struct.ath_hw* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 240
  %80 = load i32, i32* @CTL_FCC, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %69
  %83 = load i32, i32* @AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_2GHZ, align 4
  %84 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_5GHZ, align 4
  %88 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %89 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  br label %91

91:                                               ; preds = %82, %69
  br label %92

92:                                               ; preds = %91, %43
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %41, %33, %20
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_chip_test(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ar9002_hw_rf_claim(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_eeprom_init(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath9k_hw_ani_init(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
