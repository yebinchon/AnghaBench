; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_mitigate_ofdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_mitigate_ofdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64* }
%struct.ath9k_channel = type { i32 }

@AR_PHY_GEN_CTRL = common dso_local global i32 0, align 4
@AR_PHY_GC_DYN2040_PRI_CH = common dso_local global i32 0, align 4
@AR_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_spur_mitigate_ofdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_spur_mitigate_ofdm(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ar9300_eeprom*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.ar9300_eeprom* %14, %struct.ar9300_eeprom** %11, align 8
  %15 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %16 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %11, align 8
  %20 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64* %23, i64** %9, align 8
  store i32 0, i32* %8, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %11, align 8
  %26 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64* %29, i64** %9, align 8
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load i64*, i64** %9, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %131

36:                                               ; preds = %30
  %37 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %38 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  store i32 19, i32* %6, align 4
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %43 = load i32, i32* @AR_PHY_GC_DYN2040_PRI_CH, align 4
  %44 = call i32 @REG_READ_FIELD(%struct.ath_hw* %41, i32 %42, i32 %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %48 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 10
  store i32 %50, i32* %5, align 4
  br label %56

51:                                               ; preds = %40
  %52 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %53 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 10
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %46
  br label %61

57:                                               ; preds = %36
  store i32 10, i32* %6, align 4
  %58 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %59 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %56
  %62 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %63 = call i32 @ar9003_hw_spur_ofdm_clear(%struct.ath_hw* %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %128, %61
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @AR_EEPROM_MODAL_SPURS, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i64*, i64** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %68, %64
  %76 = phi i1 [ false, %64 ], [ %74, %68 ]
  br i1 %76, label %77, label %131

77:                                               ; preds = %75
  %78 = load i64*, i64** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @ath9k_hw_fbin2freq(i64 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @abs(i32 %88) #3
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %127

92:                                               ; preds = %77
  %93 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %94 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @ar9003_hw_spur_ofdm_work(%struct.ath_hw* %93, %struct.ath9k_channel* %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %100 = call i64 @AR_SREV_9565(%struct.ath_hw* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %92
  %103 = load i32, i32* %10, align 4
  %104 = icmp ult i32 %103, 4
  br i1 %104, label %105, label %126

105:                                              ; preds = %102
  %106 = load i64*, i64** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, 1
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @ath9k_hw_fbin2freq(i64 %111, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @abs(i32 %117) #3
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %105
  %122 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @ar9003_hw_spur_ofdm_9565(%struct.ath_hw* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %105
  br label %126

126:                                              ; preds = %125, %102, %92
  br label %131

127:                                              ; preds = %77
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %64

131:                                              ; preds = %35, %126, %75
  ret void
}

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_hw_spur_ofdm_clear(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_fbin2freq(i64, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @ar9003_hw_spur_ofdm_work(%struct.ath_hw*, %struct.ath9k_channel*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_spur_ofdm_9565(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
