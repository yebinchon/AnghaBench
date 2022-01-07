; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_bin2freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_bin2freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_eeprom_info = type { i64 }

@AR5K_EEPROM_CHANNEL_DIS = common dso_local global i32 0, align 4
@AR5K_EEPROM_MODE_11A = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_3_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_eeprom_info*, i32, i32)* @ath5k_eeprom_bin2freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_eeprom_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath5k_eeprom_info* %0, %struct.ath5k_eeprom_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @AR5K_EEPROM_CHANNEL_DIS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %4, align 4
  br label %59

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @AR5K_EEPROM_MODE_11A, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %20 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AR5K_EEPROM_VERSION_3_2, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 5, %25
  %27 = add nsw i32 %26, 4800
  store i32 %27, i32* %8, align 4
  br label %43

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 62
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 62
  %34 = mul nsw i32 5, %33
  %35 = add nsw i32 620, %34
  %36 = add nsw i32 %35, 5100
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 10
  %40 = add nsw i32 %39, 5100
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %36, %31 ], [ %40, %37 ]
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %24
  br label %57

44:                                               ; preds = %14
  %45 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %46 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AR5K_EEPROM_VERSION_3_2, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 2300
  store i32 %52, i32* %8, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 2400
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %12
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
