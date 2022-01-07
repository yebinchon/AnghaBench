; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_pcal_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_pcal_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32 }

@AR5K_EEPROM_VERSION_4_0 = common dso_local global i64 0, align 8
@AR5K_EEPROM_VERSION_5_0 = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11A = common dso_local global i32 0, align 4
@AR5K_EEPROM_MODE_11G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_eeprom_read_pcal_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_read_pcal_info(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath5k_eeprom_info*, align 8
  %5 = alloca i32 (%struct.ath5k_hw*, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %10, %struct.ath5k_eeprom_info** %4, align 8
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AR5K_EEPROM_VERSION_4_0, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %18 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @AR5K_EEPROM_EEMAP(i32 %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 (%struct.ath5k_hw*, i32)* @ath5k_eeprom_read_pcal_info_5112, i32 (%struct.ath5k_hw*, i32)** %5, align 8
  br label %38

23:                                               ; preds = %16, %1
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AR5K_EEPROM_VERSION_5_0, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %31 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @AR5K_EEPROM_EEMAP(i32 %32)
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 (%struct.ath5k_hw*, i32)* @ath5k_eeprom_read_pcal_info_2413, i32 (%struct.ath5k_hw*, i32)** %5, align 8
  br label %37

36:                                               ; preds = %29, %23
  store i32 (%struct.ath5k_hw*, i32)* @ath5k_eeprom_read_pcal_info_5111, i32 (%struct.ath5k_hw*, i32)** %5, align 8
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* @AR5K_EEPROM_MODE_11A, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %62, %38
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @AR5K_EEPROM_MODE_11G, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load i32 (%struct.ath5k_hw*, i32)*, i32 (%struct.ath5k_hw*, i32)** %5, align 8
  %46 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 %45(%struct.ath5k_hw* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %66

53:                                               ; preds = %44
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @ath5k_eeprom_read_target_rate_pwr_info(%struct.ath5k_hw* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %40

65:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %59, %51
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @AR5K_EEPROM_EEMAP(i32) #1

declare dso_local i32 @ath5k_eeprom_read_pcal_info_5112(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_eeprom_read_pcal_info_2413(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_eeprom_read_pcal_info_5111(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_eeprom_read_target_rate_pwr_info(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
