; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_update_noise_floor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_update_noise_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32* }

@AR5K_PHY_AGCCTL = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCTL_NF = common dso_local global i32 0, align 4
@ATH5K_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"NF did not complete in calibration window\0A\00", align 1
@AR5K_CALIBRATION_NF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"noise floor failure detected; read %d, threshold %d\0A\00", align 1
@AR5K_TUNE_CCA_MAX_GOOD_VALUE = common dso_local global i32 0, align 4
@AR5K_PHY_NF = common dso_local global i32 0, align 4
@AR5K_PHY_NF_M = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCTL_NF_EN = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCTL_NF_NOUPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"noise floor calibrated: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_update_noise_floor(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ath5k_eeprom_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %10, %struct.ath5k_eeprom_info** %3, align 8
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %12 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %13 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %11, i32 %12)
  %14 = load i32, i32* @AR5K_PHY_AGCCTL_NF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %19 = load i32, i32* @ATH5K_DEBUG_CALIBRATE, align 4
  %20 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %18, i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %116

21:                                               ; preds = %1
  %22 = load i32, i32* @AR5K_CALIBRATION_NF, align 4
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %24 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ath5k_eeprom_mode_from_channel(%struct.ath5k_hw* %27, i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %33 = call i32 @ath5k_hw_read_measured_noise_floor(%struct.ath5k_hw* %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %35 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %21
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %45 = load i32, i32* @ATH5K_DEBUG_CALIBRATE, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %44, i32 %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @AR5K_TUNE_CCA_MAX_GOOD_VALUE, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %21
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ath5k_hw_update_nfcal_hist(%struct.ath5k_hw* %51, i32 %52)
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %55 = call i32 @ath5k_hw_get_median_noise_floor(%struct.ath5k_hw* %54)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %57 = load i32, i32* @AR5K_PHY_NF, align 4
  %58 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %56, i32 %57)
  %59 = load i32, i32* @AR5K_PHY_NF_M, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 2
  %64 = load i32, i32* @AR5K_PHY_NF_M, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @AR5K_PHY_NF, align 4
  %71 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %68, i32 %69, i32 %70)
  %72 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %73 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %74 = load i32, i32* @AR5K_PHY_AGCCTL_NF, align 4
  %75 = load i32, i32* @AR5K_PHY_AGCCTL_NF_EN, align 4
  %76 = load i32, i32* @AR5K_PHY_AGCCTL_NF_NOUPDATE, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = call i32 @AR5K_REG_MASKED_BITS(%struct.ath5k_hw* %72, i32 %73, i32 %74, i32 %78)
  %80 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %81 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %82 = load i32, i32* @AR5K_PHY_AGCCTL_NF, align 4
  %83 = call i32 @ath5k_hw_register_timeout(%struct.ath5k_hw* %80, i32 %81, i32 %82, i32 0, i32 0)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @AR5K_PHY_NF_M, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = load i32, i32* @AR5K_PHY_NF_M, align 4
  %89 = and i32 -100, %88
  %90 = or i32 %87, %89
  store i32 %90, i32* %4, align 4
  %91 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @AR5K_PHY_NF, align 4
  %94 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %91, i32 %92, i32 %93)
  %95 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %96 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %97 = load i32, i32* @AR5K_PHY_AGCCTL_NF_EN, align 4
  %98 = load i32, i32* @AR5K_PHY_AGCCTL_NF_NOUPDATE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @AR5K_PHY_AGCCTL_NF, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %95, i32 %96, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %105 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @AR5K_CALIBRATION_NF, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %109 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %113 = load i32, i32* @ATH5K_DEBUG_CALIBRATE, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %112, i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %50, %17
  ret void
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, ...) #1

declare dso_local i64 @ath5k_eeprom_mode_from_channel(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_read_measured_noise_floor(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_update_nfcal_hist(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_get_median_noise_floor(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_MASKED_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_register_timeout(%struct.ath5k_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
