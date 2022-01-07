; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar5416_eeprom_4k }
%struct.ar5416_eeprom_4k = type { %struct.base_eep_header_4k, %struct.modal_eep_4k_header }
%struct.base_eep_header_4k = type { i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.modal_eep_4k_header = type { i32*, i32, i32, i32, i32, i32* }

@AR5416_PWR_TABLE_OFFSET_DB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_4k_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_4k_get_eeprom(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar5416_eeprom_4k*, align 8
  %7 = alloca %struct.modal_eep_4k_header*, align 8
  %8 = alloca %struct.base_eep_header_4k*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ar5416_eeprom_4k* %11, %struct.ar5416_eeprom_4k** %6, align 8
  %12 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %6, align 8
  %13 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %12, i32 0, i32 1
  store %struct.modal_eep_4k_header* %13, %struct.modal_eep_4k_header** %7, align 8
  %14 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %6, align 8
  %15 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %14, i32 0, i32 0
  store %struct.base_eep_header_4k* %15, %struct.base_eep_header_4k** %8, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %98 [
    i32 137, label %17
    i32 141, label %23
    i32 140, label %28
    i32 139, label %34
    i32 132, label %40
    i32 135, label %47
    i32 134, label %52
    i32 131, label %56
    i32 136, label %61
    i32 143, label %65
    i32 128, label %69
    i32 130, label %73
    i32 142, label %77
    i32 133, label %78
    i32 138, label %80
    i32 144, label %84
    i32 129, label %88
    i32 145, label %92
  ]

17:                                               ; preds = %2
  %18 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %19 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %99

23:                                               ; preds = %2
  %24 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %25 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @get_unaligned_be16(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %99

28:                                               ; preds = %2
  %29 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %30 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 2
  %33 = call i32 @get_unaligned_be16(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %99

34:                                               ; preds = %2
  %35 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %36 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 4
  %39 = call i32 @get_unaligned_be16(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %99

40:                                               ; preds = %2
  %41 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %42 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %99

47:                                               ; preds = %2
  %48 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %49 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %99

52:                                               ; preds = %2
  %53 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %54 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %3, align 4
  br label %99

56:                                               ; preds = %2
  %57 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %58 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  store i32 %60, i32* %3, align 4
  br label %99

61:                                               ; preds = %2
  %62 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %63 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %3, align 4
  br label %99

65:                                               ; preds = %2
  %66 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %67 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %3, align 4
  br label %99

69:                                               ; preds = %2
  %70 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %71 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %3, align 4
  br label %99

73:                                               ; preds = %2
  %74 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %75 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %3, align 4
  br label %99

77:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

78:                                               ; preds = %2
  %79 = load i32, i32* @AR5416_PWR_TABLE_OFFSET_DB, align 4
  store i32 %79, i32* %3, align 4
  br label %99

80:                                               ; preds = %2
  %81 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %82 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %3, align 4
  br label %99

84:                                               ; preds = %2
  %85 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %86 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %3, align 4
  br label %99

88:                                               ; preds = %2
  %89 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %90 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %3, align 4
  br label %99

92:                                               ; preds = %2
  %93 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %94 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %92, %88, %84, %80, %78, %77, %73, %69, %65, %61, %56, %52, %47, %40, %34, %28, %23, %17
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @get_unaligned_be16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
