; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9287_eeprom }
%struct.ar9287_eeprom = type { %struct.base_eep_ar9287_header, %struct.modal_eep_ar9287_header }
%struct.base_eep_ar9287_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.modal_eep_ar9287_header = type { i32*, i32* }

@AR9287_EEP_MINOR_VER_2 = common dso_local global i32 0, align 4
@AR9287_EEP_MINOR_VER_3 = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_ar9287_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_ar9287_get_eeprom(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9287_eeprom*, align 8
  %7 = alloca %struct.modal_eep_ar9287_header*, align 8
  %8 = alloca %struct.base_eep_ar9287_header*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ar9287_eeprom* %12, %struct.ar9287_eeprom** %6, align 8
  %13 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %6, align 8
  %14 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %13, i32 0, i32 1
  store %struct.modal_eep_ar9287_header* %14, %struct.modal_eep_ar9287_header** %7, align 8
  %15 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %6, align 8
  %16 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %15, i32 0, i32 0
  store %struct.base_eep_ar9287_header* %16, %struct.base_eep_ar9287_header** %8, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = call i32 @ath9k_hw_ar9287_get_eeprom_rev(%struct.ath_hw* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %111 [
    i32 137, label %20
    i32 140, label %26
    i32 139, label %31
    i32 138, label %37
    i32 133, label %43
    i32 135, label %50
    i32 134, label %55
    i32 132, label %59
    i32 128, label %64
    i32 131, label %68
    i32 141, label %72
    i32 136, label %76
    i32 130, label %80
    i32 129, label %89
    i32 142, label %98
  ]

20:                                               ; preds = %2
  %21 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %22 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %112

26:                                               ; preds = %2
  %27 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %28 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @get_unaligned_be16(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %112

31:                                               ; preds = %2
  %32 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %33 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 2
  %36 = call i32 @get_unaligned_be16(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %112

37:                                               ; preds = %2
  %38 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %39 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 4
  %42 = call i32 @get_unaligned_be16(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %112

43:                                               ; preds = %2
  %44 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %45 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %44, i32 0, i32 9
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %112

50:                                               ; preds = %2
  %51 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %52 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @le16_to_cpu(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %112

55:                                               ; preds = %2
  %56 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %57 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %3, align 4
  br label %112

59:                                               ; preds = %2
  %60 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %61 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @le16_to_cpu(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %112

64:                                               ; preds = %2
  %65 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %66 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %3, align 4
  br label %112

68:                                               ; preds = %2
  %69 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %70 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %3, align 4
  br label %112

72:                                               ; preds = %2
  %73 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %74 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %3, align 4
  br label %112

76:                                               ; preds = %2
  %77 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %78 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %3, align 4
  br label %112

80:                                               ; preds = %2
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @AR9287_EEP_MINOR_VER_2, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %86 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %3, align 4
  br label %112

88:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %112

89:                                               ; preds = %2
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @AR9287_EEP_MINOR_VER_3, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %95 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %3, align 4
  br label %112

97:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %112

98:                                               ; preds = %2
  %99 = load i32, i32* @u8, align 4
  %100 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %101 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %106 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @max_t(i32 %99, i32 %104, i32 %109)
  store i32 %110, i32* %3, align 4
  br label %112

111:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %98, %97, %93, %88, %84, %76, %72, %68, %64, %59, %55, %50, %43, %37, %31, %26, %20
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @ath9k_hw_ar9287_get_eeprom_rev(%struct.ath_hw*) #1

declare dso_local i32 @get_unaligned_be16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
