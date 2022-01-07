; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_get_chan_pcal_surrounding_piers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_get_chan_pcal_surrounding_piers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64*, %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info* }
%struct.ath5k_chan_pcal_info = type { i64 }
%struct.ieee80211_channel = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.ieee80211_channel*, %struct.ath5k_chan_pcal_info**, %struct.ath5k_chan_pcal_info**)* @ath5k_get_chan_pcal_surrounding_piers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_get_chan_pcal_surrounding_piers(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1, %struct.ath5k_chan_pcal_info** %2, %struct.ath5k_chan_pcal_info** %3) #0 {
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ath5k_chan_pcal_info**, align 8
  %8 = alloca %struct.ath5k_chan_pcal_info**, align 8
  %9 = alloca %struct.ath5k_eeprom_info*, align 8
  %10 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store %struct.ath5k_chan_pcal_info** %2, %struct.ath5k_chan_pcal_info*** %7, align 8
  store %struct.ath5k_chan_pcal_info** %3, %struct.ath5k_chan_pcal_info*** %8, align 8
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %19, %struct.ath5k_eeprom_info** %9, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %16, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %35 [
    i32 130, label %26
    i32 129, label %30
    i32 128, label %34
  ]

26:                                               ; preds = %4
  %27 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %9, align 8
  %28 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %27, i32 0, i32 3
  %29 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %28, align 8
  store %struct.ath5k_chan_pcal_info* %29, %struct.ath5k_chan_pcal_info** %10, align 8
  store i64 130, i64* %13, align 8
  br label %39

30:                                               ; preds = %4
  %31 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %9, align 8
  %32 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %31, i32 0, i32 2
  %33 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %32, align 8
  store %struct.ath5k_chan_pcal_info* %33, %struct.ath5k_chan_pcal_info** %10, align 8
  store i64 129, i64* %13, align 8
  br label %39

34:                                               ; preds = %4
  br label %35

35:                                               ; preds = %4, %34
  %36 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %9, align 8
  %37 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %36, i32 0, i32 1
  %38 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %37, align 8
  store %struct.ath5k_chan_pcal_info* %38, %struct.ath5k_chan_pcal_info** %10, align 8
  store i64 128, i64* %13, align 8
  br label %39

39:                                               ; preds = %35, %30, %26
  %40 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %9, align 8
  %41 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, 1
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %10, align 8
  %49 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %48, i64 0
  %50 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %96

54:                                               ; preds = %39
  %55 = load i64, i64* %16, align 8
  %56 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %10, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %56, i64 %57
  %59 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %55, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i64, i64* %14, align 8
  store i64 %63, i64* %12, align 8
  store i64 %63, i64* %11, align 8
  br label %96

64:                                               ; preds = %54
  store i64 0, i64* %15, align 8
  br label %65

65:                                               ; preds = %92, %64
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp ule i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %65
  %70 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %10, align 8
  %71 = load i64, i64* %15, align 8
  %72 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %70, i64 %71
  %73 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %16, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i64, i64* %15, align 8
  store i64 %78, i64* %12, align 8
  store i64 %78, i64* %11, align 8
  br label %96

79:                                               ; preds = %69
  %80 = load i64, i64* %16, align 8
  %81 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %10, align 8
  %82 = load i64, i64* %15, align 8
  %83 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %81, i64 %82
  %84 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %80, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i64, i64* %15, align 8
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = sub i64 %89, 1
  store i64 %90, i64* %11, align 8
  br label %96

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %15, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %15, align 8
  br label %65

95:                                               ; preds = %65
  br label %96

96:                                               ; preds = %95, %87, %77, %62, %53
  %97 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %97, i64 %98
  %100 = load %struct.ath5k_chan_pcal_info**, %struct.ath5k_chan_pcal_info*** %7, align 8
  store %struct.ath5k_chan_pcal_info* %99, %struct.ath5k_chan_pcal_info** %100, align 8
  %101 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %10, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %101, i64 %102
  %104 = load %struct.ath5k_chan_pcal_info**, %struct.ath5k_chan_pcal_info*** %8, align 8
  store %struct.ath5k_chan_pcal_info* %103, %struct.ath5k_chan_pcal_info** %104, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
