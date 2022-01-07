; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_nvram_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ath9k_platform_data* }
%struct.ath9k_platform_data = type { i32 }
%struct.ath_common = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ath_common*, i32, i32*)* }

@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unable to read eeprom region at offset %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_nvram_read(%struct.ath_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ath9k_platform_data*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %10)
  store %struct.ath_common* %11, %struct.ath_common** %7, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %15, align 8
  store %struct.ath9k_platform_data* %16, %struct.ath9k_platform_data** %8, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @ath9k_hw_nvram_read_firmware(i64 %24, i32 %25, i32* %26)
  store i32 %27, i32* %9, align 4
  br label %52

28:                                               ; preds = %3
  %29 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %30 = icmp ne %struct.ath9k_platform_data* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %33 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @ath9k_hw_nvram_read_pdata(%struct.ath9k_platform_data* %37, i32 %38, i32* %39)
  store i32 %40, i32* %9, align 4
  br label %51

41:                                               ; preds = %31, %28
  %42 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %43 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.ath_common*, i32, i32*)*, i32 (%struct.ath_common*, i32, i32*)** %45, align 8
  %47 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 %46(%struct.ath_common* %47, i32 %48, i32* %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %41, %36
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %57 = load i32, i32* @EEPROM, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ath_dbg(%struct.ath_common* %56, i32 %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_nvram_read_firmware(i64, i32, i32*) #1

declare dso_local i32 @ath9k_hw_nvram_read_pdata(%struct.ath9k_platform_data*, i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
