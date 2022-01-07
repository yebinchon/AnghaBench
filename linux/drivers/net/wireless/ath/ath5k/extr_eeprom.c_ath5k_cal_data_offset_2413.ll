; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_cal_data_offset_2413.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_cal_data_offset_2413.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_eeprom_info = type { i32, i32 }

@AR5K_EEPROM_N_2GHZ_CHAN_2413 = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_5GHZ_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_eeprom_info*, i32)* @ath5k_cal_data_offset_2413 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_cal_data_offset_2413(%struct.ath5k_eeprom_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_eeprom_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath5k_eeprom_info* %0, %struct.ath5k_eeprom_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %7 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @AR5K_EEPROM_CAL_DATA_START(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %42 [
    i32 128, label %11
    i32 129, label %26
    i32 130, label %41
  ]

11:                                               ; preds = %2
  %12 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %13 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @AR5K_EEPROM_HDR_11B(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %19 = call i32 @ath5k_pdgains_size_2413(%struct.ath5k_eeprom_info* %18, i32 129)
  %20 = load i32, i32* @AR5K_EEPROM_N_2GHZ_CHAN_2413, align 4
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %17, %11
  br label %26

26:                                               ; preds = %2, %25
  %27 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %28 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @AR5K_EEPROM_HDR_11A(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %34 = call i32 @ath5k_pdgains_size_2413(%struct.ath5k_eeprom_info* %33, i32 130)
  %35 = load i32, i32* @AR5K_EEPROM_N_5GHZ_CHAN, align 4
  %36 = sdiv i32 %35, 2
  %37 = add nsw i32 %34, %36
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %32, %26
  br label %41

41:                                               ; preds = %2, %40
  br label %43

42:                                               ; preds = %2
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @AR5K_EEPROM_CAL_DATA_START(i32) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11B(i32) #1

declare dso_local i32 @ath5k_pdgains_size_2413(%struct.ath5k_eeprom_info*, i32) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
