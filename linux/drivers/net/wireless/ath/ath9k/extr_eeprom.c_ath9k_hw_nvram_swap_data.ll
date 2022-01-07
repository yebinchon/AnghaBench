; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_nvram_swap_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_nvram_swap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ath_hw*)* }
%struct.ath_common = type { i32 }

@AR5416_EEPROM_MAGIC_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Reading Magic # failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AR5416_EEPROM_MAGIC = common dso_local global i64 0, align 8
@EEPROM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"EEPROM needs byte-swapping to correct endianness.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Ignoring invalid EEPROM magic (0x%04x).\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid EEPROM magic (0x%04x).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AH_NO_EEP_SWAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Ignoring endianness difference in EEPROM magic bytes.\0A\00", align 1
@AR5416_EEPMISC_BIG_ENDIAN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"Big Endian EEPROM detected according to EEPMISC register.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_nvram_swap_data(%struct.ath_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %12, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %16 = load i32, i32* @AR5416_EEPROM_MAGIC_OFFSET, align 4
  %17 = call i32 @ath9k_hw_nvram_read(%struct.ath_hw* %15, i32 %16, i64* %8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %21 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %110

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @swab16(i64 %25)
  %27 = load i64, i64* @AR5416_EEPROM_MAGIC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  %30 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %31 = load i32, i32* @EEPROM, align 4
  %32 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %30, i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %54

33:                                               ; preds = %24
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @AR5416_EEPROM_MAGIC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %39 = call i64 @ath9k_hw_use_flash(%struct.ath_hw* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %43 = load i32, i32* @EEPROM, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %42, i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  br label %52

46:                                               ; preds = %37
  %47 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %110

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %54
  %58 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %59 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @AH_NO_EEP_SWAP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %66 = call i32 @ath_info(%struct.ath_common* %65, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %90

67:                                               ; preds = %57
  %68 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %69 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %68, i32 0, i32 2
  %70 = bitcast i32* %69 to i64*
  store i64* %70, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %86, %67
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load i64*, i64** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @swab16(i64 %80)
  %82 = load i64*, i64** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 %81, i64* %85, align 8
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %71

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89, %64
  br label %91

91:                                               ; preds = %90, %54
  %92 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %93 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %95, align 8
  %97 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %98 = call i32 %96(%struct.ath_hw* %97)
  %99 = load i32, i32* @AR5416_EEPMISC_BIG_ENDIAN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load i32*, i32** %6, align 8
  store i32 1, i32* %103, align 4
  %104 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %105 = load i32, i32* @EEPROM, align 4
  %106 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %104, i32 %105, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  br label %109

107:                                              ; preds = %91
  %108 = load i32*, i32** %6, align 8
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %107, %102
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %46, %19
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_nvram_read(%struct.ath_hw*, i32, i64*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, ...) #1

declare dso_local i64 @swab16(i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i64 @ath9k_hw_use_flash(%struct.ath_hw*) #1

declare dso_local i32 @ath_info(%struct.ath_common*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
