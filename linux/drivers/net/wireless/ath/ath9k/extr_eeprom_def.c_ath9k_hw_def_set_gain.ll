; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.modal_eep_header = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.ar5416_eeprom_def = type { i32 }

@AR5416_EEP_MINOR_VER_3 = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN1_DB = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN2_DB = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_BSW_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_BSW_ATTEN = common dso_local global i32 0, align 4
@AR_PHY_RXGAIN = common dso_local global i64 0, align 8
@AR9280_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR9280_PHY_RXGAIN_TXRX_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_RXTX_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.modal_eep_header*, %struct.ar5416_eeprom_def*, i32, i32, i32)* @ath9k_hw_def_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_def_set_gain(%struct.ath_hw* %0, %struct.modal_eep_header* %1, %struct.ar5416_eeprom_def* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.modal_eep_header*, align 8
  %9 = alloca %struct.ar5416_eeprom_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store %struct.modal_eep_header* %1, %struct.modal_eep_header** %8, align 8
  store %struct.ar5416_eeprom_def* %2, %struct.ar5416_eeprom_def** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %14 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %13)
  %15 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %16 = call i64 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw* %15)
  %17 = load i64, i64* @AR5416_EEP_MINOR_VER_3, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %121

19:                                               ; preds = %6
  %20 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %21 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %28 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %19
  %31 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %32 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, align 4
  %37 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %38 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %31, i64 %35, i32 %36, i32 %43)
  %45 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %46 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_DB, align 4
  %51 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %52 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %45, i64 %49, i32 %50, i32 %57)
  %59 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %60 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN, align 4
  %65 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %66 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %59, i64 %63, i32 %64, i32 %71)
  %73 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %74 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_DB, align 4
  %79 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %80 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %73, i64 %77, i32 %78, i32 %85)
  br label %120

87:                                               ; preds = %19
  %88 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %89 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %94 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AR_PHY_GAIN_2GHZ_BSW_MARGIN, align 4
  %101 = call i32 @SM(i32 %99, i32 %100)
  %102 = load i32, i32* @AR_PHY_GAIN_2GHZ_BSW_MARGIN, align 4
  %103 = call i32 @REG_RMW(%struct.ath_hw* %88, i64 %92, i32 %101, i32 %102)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %105 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %110 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AR_PHY_GAIN_2GHZ_BSW_ATTEN, align 4
  %117 = call i32 @SM(i32 %115, i32 %116)
  %118 = load i32, i32* @AR_PHY_GAIN_2GHZ_BSW_ATTEN, align 4
  %119 = call i32 @REG_RMW(%struct.ath_hw* %104, i64 %108, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %87, %30
  br label %121

121:                                              ; preds = %120, %6
  %122 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %123 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %121
  %126 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %127 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_ATTEN, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %126, i64 %130, i32 %131, i32 %132)
  %134 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %135 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_MARGIN, align 4
  %140 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %141 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %134, i64 %138, i32 %139, i32 %146)
  br label %175

148:                                              ; preds = %121
  %149 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %150 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @AR_PHY_RXGAIN_TXRX_ATTEN, align 4
  %156 = call i32 @SM(i32 %154, i32 %155)
  %157 = load i32, i32* @AR_PHY_RXGAIN_TXRX_ATTEN, align 4
  %158 = call i32 @REG_RMW(%struct.ath_hw* %149, i64 %153, i32 %156, i32 %157)
  %159 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %160 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %160, %162
  %164 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %165 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @AR_PHY_GAIN_2GHZ_RXTX_MARGIN, align 4
  %172 = call i32 @SM(i32 %170, i32 %171)
  %173 = load i32, i32* @AR_PHY_GAIN_2GHZ_RXTX_MARGIN, align 4
  %174 = call i32 @REG_RMW(%struct.ath_hw* %159, i64 %163, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %148, %125
  %176 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %177 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %176)
  ret void
}

declare dso_local i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i64, i32, i32) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i64, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
