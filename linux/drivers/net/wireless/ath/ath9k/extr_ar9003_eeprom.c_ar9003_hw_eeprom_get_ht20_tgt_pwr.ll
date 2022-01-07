; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_eeprom_get_ht20_tgt_pwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_eeprom_get_ht20_tgt_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { i32*, %struct.cal_tgt_pow_ht*, i32*, %struct.cal_tgt_pow_ht* }
%struct.cal_tgt_pow_ht = type { i32* }

@AR9300_NUM_5G_20_TARGET_POWERS = common dso_local global i32 0, align 4
@AR9300_NUM_2G_20_TARGET_POWERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i64, i64, i32)* @ar9003_hw_eeprom_get_ht20_tgt_pwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ar9300_eeprom*, align 8
  %15 = alloca %struct.cal_tgt_pow_ht*, align 8
  %16 = alloca i32*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @AR9300_NUM_5G_20_TARGET_POWERS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @AR9300_NUM_5G_20_TARGET_POWERS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.ar9300_eeprom* %26, %struct.ar9300_eeprom** %14, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %4
  %30 = load i64, i64* @AR9300_NUM_2G_20_TARGET_POWERS, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %32 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %31, i32 0, i32 3
  %33 = load %struct.cal_tgt_pow_ht*, %struct.cal_tgt_pow_ht** %32, align 8
  store %struct.cal_tgt_pow_ht* %33, %struct.cal_tgt_pow_ht** %15, align 8
  %34 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %35 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %16, align 8
  br label %46

37:                                               ; preds = %4
  %38 = load i32, i32* @AR9300_NUM_5G_20_TARGET_POWERS, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  %40 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %41 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %40, i32 0, i32 1
  %42 = load %struct.cal_tgt_pow_ht*, %struct.cal_tgt_pow_ht** %41, align 8
  store %struct.cal_tgt_pow_ht* %42, %struct.cal_tgt_pow_ht** %15, align 8
  %43 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %44 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %16, align 8
  br label %46

46:                                               ; preds = %37, %29
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %70, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32*, i32** %16, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ath9k_hw_fbin2freq(i32 %55, i32 %56)
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i32, i32* %23, i64 %58
  store i32 %57, i32* %59, align 4
  %60 = load %struct.cal_tgt_pow_ht*, %struct.cal_tgt_pow_ht** %15, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds %struct.cal_tgt_pow_ht, %struct.cal_tgt_pow_ht* %60, i64 %61
  %63 = getelementptr inbounds %struct.cal_tgt_pow_ht, %struct.cal_tgt_pow_ht* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i32, i32* %20, i64 %68
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %51
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %47

73:                                               ; preds = %47
  %74 = load i64, i64* %7, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @ar9003_hw_power_interpolate(i32 %75, i32* %23, i32* %20, i64 %76)
  %78 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %78)
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ath9k_hw_fbin2freq(i32, i32) #2

declare dso_local i32 @ar9003_hw_power_interpolate(i32, i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
