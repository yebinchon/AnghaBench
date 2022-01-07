; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.modal_eep_4k_header = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.ar5416_eeprom_4k = type { i32 }

@AR_PHY_SWITCH_CHAIN_0 = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_3 = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN1_DB = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN2_DB = common dso_local global i32 0, align 4
@AR_PHY_RXGAIN = common dso_local global i64 0, align 8
@AR9280_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR9280_PHY_RXGAIN_TXRX_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.modal_eep_4k_header*, %struct.ar5416_eeprom_4k*, i32)* @ath9k_hw_4k_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_4k_set_gain(%struct.ath_hw* %0, %struct.modal_eep_4k_header* %1, %struct.ar5416_eeprom_4k* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.modal_eep_4k_header*, align 8
  %7 = alloca %struct.ar5416_eeprom_4k*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.modal_eep_4k_header* %1, %struct.modal_eep_4k_header** %6, align 8
  store %struct.ar5416_eeprom_4k* %2, %struct.ar5416_eeprom_4k** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %10 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %9)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %12 = load i32, i32* @AR_PHY_SWITCH_CHAIN_0, align 4
  %13 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %14 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %13, i32 0, i32 8
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = call i32 @REG_RMW(%struct.ath_hw* %11, i32 %12, i32 %18, i32 0)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %21 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %22 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %23 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %28 = call i32 @SM(i32 %26, i32 %27)
  %29 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %30 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %35 = call i32 @SM(i32 %33, i32 %34)
  %36 = or i32 %28, %35
  %37 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %38 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @REG_RMW(%struct.ath_hw* %20, i32 %21, i32 %36, i32 %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %42 = call i64 @ath9k_hw_4k_get_eeprom_rev(%struct.ath_hw* %41)
  %43 = load i64, i64* @AR5416_EEP_MINOR_VER_3, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %127

45:                                               ; preds = %4
  %46 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %47 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %52 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %53 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, align 4
  %54 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %55 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %51, i64 %52, i32 %53, i32 %58)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %61 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %62 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_DB, align 4
  %63 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %64 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %60, i64 %61, i32 %62, i32 %67)
  %69 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %70 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %71 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN, align 4
  %72 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %73 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %69, i64 %70, i32 %71, i32 %76)
  %78 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %79 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %80 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_DB, align 4
  %81 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %82 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %78, i64 %79, i32 %80, i32 %85)
  %87 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %88 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %89 = add nsw i64 %88, 4096
  %90 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, align 4
  %91 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %92 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %87, i64 %89, i32 %90, i32 %95)
  %97 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %98 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %99 = add nsw i64 %98, 4096
  %100 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_DB, align 4
  %101 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %102 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %97, i64 %99, i32 %100, i32 %105)
  %107 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %108 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %109 = add nsw i64 %108, 4096
  %110 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN, align 4
  %111 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %112 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %107, i64 %109, i32 %110, i32 %115)
  %117 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %118 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %119 = add nsw i64 %118, 4096
  %120 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_DB, align 4
  %121 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %122 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %117, i64 %119, i32 %120, i32 %125)
  br label %127

127:                                              ; preds = %45, %4
  %128 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %129 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %130 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_ATTEN, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %128, i64 %129, i32 %130, i32 %131)
  %133 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %134 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %135 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_MARGIN, align 4
  %136 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %137 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %133, i64 %134, i32 %135, i32 %140)
  %142 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %143 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %144 = add nsw i64 %143, 4096
  %145 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_ATTEN, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %142, i64 %144, i32 %145, i32 %146)
  %148 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %149 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %150 = add nsw i64 %149, 4096
  %151 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_MARGIN, align 4
  %152 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %153 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %148, i64 %150, i32 %151, i32 %156)
  %158 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %159 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %158)
  ret void
}

declare dso_local i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @ath9k_hw_4k_get_eeprom_rev(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i64, i32, i32) #1

declare dso_local i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
