; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_freq_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_freq_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64* }
%struct.ath5k_chan_pcal_info = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32*, i32, %struct.ath5k_chan_pcal_info*, i32)* @ath5k_eeprom_read_freq_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_read_freq_list(%struct.ath5k_hw* %0, i32* %1, i32 %2, %struct.ath5k_chan_pcal_info* %3, i32 %4) #0 {
  %6 = alloca %struct.ath5k_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath5k_eeprom_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ath5k_chan_pcal_info* %3, %struct.ath5k_chan_pcal_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %18 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %19, %struct.ath5k_eeprom_info** %11, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %11, align 8
  %23 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %67, %5
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @AR5K_EEPROM_READ(i32 %33, i32 %35)
  %37 = load i32, i32* %16, align 4
  %38 = and i32 %37, 255
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %86

42:                                               ; preds = %32
  %43 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %11, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %43, i32 %44, i32 %45)
  %47 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %47, i64 %50
  %52 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %51, i32 0, i32 0
  store i8* %46, i8** %52, align 8
  %53 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %11, align 8
  %54 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load i32, i32* %16, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %42
  br label %86

67:                                               ; preds = %42
  %68 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %11, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %68, i32 %69, i32 %70)
  %72 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %9, align 8
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %72, i64 %75
  %77 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %76, i32 0, i32 0
  store i8* %71, i8** %77, align 8
  %78 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %11, align 8
  %79 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  br label %28

86:                                               ; preds = %66, %41, %28
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  ret i32 0
}

declare dso_local i32 @AR5K_EEPROM_READ(i32, i32) #1

declare dso_local i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
