; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_platform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw*, %struct.TYPE_3__* }
%struct.ath_hw = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ath9k_platform_data* }
%struct.ath9k_platform_data = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_common = type { i32 }

@AH_USE_EEPROM = common dso_local global i32 0, align 4
@AH_NO_EEP_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath9k_init_platform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_platform(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath9k_platform_data*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %11, align 8
  store %struct.ath9k_platform_data* %12, %struct.ath9k_platform_data** %4, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = load %struct.ath_hw*, %struct.ath_hw** %14, align 8
  store %struct.ath_hw* %15, %struct.ath_hw** %5, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %16)
  store %struct.ath_common* %17, %struct.ath_common** %6, align 8
  %18 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %19 = icmp ne %struct.ath9k_platform_data* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %132

21:                                               ; preds = %1
  %22 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %84, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @AH_USE_EEPROM, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %34 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %39 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %44 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %54 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %59 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %62 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %64 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %67 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %69 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %74 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %26
  %78 = load i32, i32* @AH_NO_EEP_SWAP, align 4
  %79 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %80 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %26
  br label %84

84:                                               ; preds = %83, %21
  %85 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %86 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %91 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %92 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @ath9k_eeprom_request(%struct.ath_softc* %90, i64 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %132

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %84
  %101 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %102 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %107 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %111 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %116 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %120 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %125 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %4, align 8
  %128 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @ether_addr_copy(i32 %126, i64 %129)
  br label %131

131:                                              ; preds = %123, %118
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %97, %20
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_eeprom_request(%struct.ath_softc*, i64) #1

declare dso_local i32 @ether_addr_copy(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
