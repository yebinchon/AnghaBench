; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_free_pcal_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_free_pcal_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64*, %struct.ath5k_chan_pcal_info*, i32, %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info* }
%struct.ath5k_chan_pcal_info = type { %struct.ath5k_pdgain_info* }
%struct.ath5k_pdgain_info = type { %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info* }

@EINVAL = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_PD_CURVES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32)* @ath5k_eeprom_free_pcal_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_free_pcal_info(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_eeprom_info*, align 8
  %7 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ath5k_pdgain_info*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %13, %struct.ath5k_eeprom_info** %6, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %48 [
    i32 130, label %15
    i32 129, label %26
    i32 128, label %37
  ]

15:                                               ; preds = %2
  %16 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %17 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @AR5K_EEPROM_HDR_11A(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %105

22:                                               ; preds = %15
  %23 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %24 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %23, i32 0, i32 4
  %25 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %24, align 8
  store %struct.ath5k_chan_pcal_info* %25, %struct.ath5k_chan_pcal_info** %7, align 8
  br label %51

26:                                               ; preds = %2
  %27 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %28 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @AR5K_EEPROM_HDR_11B(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %105

33:                                               ; preds = %26
  %34 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %35 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %34, i32 0, i32 3
  %36 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %35, align 8
  store %struct.ath5k_chan_pcal_info* %36, %struct.ath5k_chan_pcal_info** %7, align 8
  br label %51

37:                                               ; preds = %2
  %38 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %39 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @AR5K_EEPROM_HDR_11G(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %105

44:                                               ; preds = %37
  %45 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %46 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %45, i32 0, i32 1
  %47 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %46, align 8
  store %struct.ath5k_chan_pcal_info* %47, %struct.ath5k_chan_pcal_info** %7, align 8
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %105

51:                                               ; preds = %44, %33, %22
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %101, %51
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %55 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %53, %60
  br i1 %61, label %62, label %104

62:                                               ; preds = %52
  %63 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %63, i64 %64
  %66 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %65, i32 0, i32 0
  %67 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %66, align 8
  %68 = icmp ne %struct.ath5k_pdgain_info* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  br label %101

70:                                               ; preds = %62
  store i64 0, i64* %9, align 8
  br label %71

71:                                               ; preds = %91, %70
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @AR5K_EEPROM_N_PD_CURVES, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %76, i64 %77
  %79 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %78, i32 0, i32 0
  %80 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %80, i64 %81
  store %struct.ath5k_pdgain_info* %82, %struct.ath5k_pdgain_info** %10, align 8
  %83 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %84 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %83, i32 0, i32 1
  %85 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %84, align 8
  %86 = call i32 @kfree(%struct.ath5k_pdgain_info* %85)
  %87 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %88 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %87, i32 0, i32 0
  %89 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %88, align 8
  %90 = call i32 @kfree(%struct.ath5k_pdgain_info* %89)
  br label %91

91:                                               ; preds = %75
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %9, align 8
  br label %71

94:                                               ; preds = %71
  %95 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %95, i64 %96
  %98 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %97, i32 0, i32 0
  %99 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %98, align 8
  %100 = call i32 @kfree(%struct.ath5k_pdgain_info* %99)
  br label %101

101:                                              ; preds = %94, %69
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %8, align 8
  br label %52

104:                                              ; preds = %52
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %48, %43, %32, %21
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @AR5K_EEPROM_HDR_11A(i32) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11B(i32) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11G(i32) #1

declare dso_local i32 @kfree(%struct.ath5k_pdgain_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
