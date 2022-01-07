; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_set_antenna_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_set_antenna_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i32, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@AR5K_STA_ID1_DEFAULT_ANTENNA = common dso_local global i32 0, align 4
@AR5K_STA_ID1_DESC_ANTENNA = common dso_local global i32 0, align 4
@AR5K_STA_ID1_RTS_DEF_ANTENNA = common dso_local global i32 0, align 4
@AR5K_STA_ID1_SELFGEN_DEF_ANT = common dso_local global i32 0, align 4
@AR5K_STA_ID1 = common dso_local global i32 0, align 4
@AR5K_STA_ID1_ANTENNA_SETTINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_set_antenna_mode(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 3
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  store %struct.ieee80211_channel* %17, %struct.ieee80211_channel** %5, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %19 = icmp eq %struct.ieee80211_channel* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %108

24:                                               ; preds = %2
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %30 = call i32 @ath5k_eeprom_mode_from_channel(%struct.ath5k_hw* %28, %struct.ieee80211_channel* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %4, align 4
  switch i32 %31, label %39 [
    i32 133, label %32
    i32 132, label %33
    i32 131, label %34
    i32 128, label %35
    i32 130, label %36
    i32 129, label %37
    i32 134, label %38
  ]

32:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %40

33:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %40

34:                                               ; preds = %24
  store i32 2, i32* %12, align 4
  store i32 2, i32* %13, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %40

35:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %40

36:                                               ; preds = %24
  store i32 1, i32* %13, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %40

37:                                               ; preds = %24
  store i32 1, i32* %13, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %40

38:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  store i32 2, i32* %13, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %40

39:                                               ; preds = %24
  br label %108

40:                                               ; preds = %38, %37, %36, %35, %34, %33, %32
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %49 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @AR5K_STA_ID1_DEFAULT_ANTENNA, align 4
  br label %55

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = load i32, i32* %14, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @AR5K_STA_ID1_DESC_ANTENNA, align 4
  br label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = load i32, i32* %14, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @AR5K_STA_ID1_RTS_DEF_ANTENNA, align 4
  br label %73

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @AR5K_STA_ID1_SELFGEN_DEF_ANT, align 4
  br label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = load i32, i32* %14, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %14, align 4
  %86 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %87 = load i32, i32* @AR5K_STA_ID1, align 4
  %88 = load i32, i32* @AR5K_STA_ID1_ANTENNA_SETTINGS, align 4
  %89 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %94 = load i32, i32* @AR5K_STA_ID1, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %82
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @ath5k_hw_set_antenna_switch(%struct.ath5k_hw* %98, i32 %99)
  %101 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @ath5k_hw_set_fast_div(%struct.ath5k_hw* %101, i32 %102, i32 %103)
  %105 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @ath5k_hw_set_def_antenna(%struct.ath5k_hw* %105, i32 %106)
  br label %108

108:                                              ; preds = %97, %39, %20
  ret void
}

declare dso_local i32 @ath5k_eeprom_mode_from_channel(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_set_antenna_switch(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_set_fast_div(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_set_def_antenna(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
