; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_get_max_ctl_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_get_max_ctl_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64*, i64, %struct.ath5k_edge_power* }
%struct.ath5k_edge_power = type { i64, i64 }
%struct.ieee80211_channel = type { i64, i32, i32 }
%struct.ath_regulatory = type { i32 }

@AR5K_BWMODE_40MHZ = common dso_local global i32 0, align 4
@AR5K_CTL_TURBO = common dso_local global i64 0, align 8
@AR5K_CTL_11A = common dso_local global i64 0, align 8
@AR5K_CTL_TURBOG = common dso_local global i64 0, align 8
@AR5K_CTL_11G = common dso_local global i64 0, align 8
@AR5K_CTL_11B = common dso_local global i64 0, align 8
@AR5K_EEPROM_N_EDGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.ieee80211_channel*)* @ath5k_get_max_ctl_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_get_max_ctl_power(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ath_regulatory*, align 8
  %6 = alloca %struct.ath5k_eeprom_info*, align 8
  %7 = alloca %struct.ath5k_edge_power*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %17 = call %struct.ath_regulatory* @ath5k_hw_regulatory(%struct.ath5k_hw* %16)
  store %struct.ath_regulatory* %17, %struct.ath_regulatory** %5, align 8
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %20, %struct.ath5k_eeprom_info** %6, align 8
  %21 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %22 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %21, i32 0, i32 2
  %23 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %22, align 8
  store %struct.ath5k_edge_power* %23, %struct.ath5k_edge_power** %7, align 8
  %24 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %25 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %8, align 8
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 4
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 255, i64* %14, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %15, align 8
  %35 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ath_regd_get_band_ctl(%struct.ath_regulatory* %35, i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %77 [
    i32 130, label %43
    i32 128, label %58
    i32 129, label %73
  ]

43:                                               ; preds = %2
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AR5K_BWMODE_40MHZ, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i64, i64* @AR5K_CTL_TURBO, align 8
  %51 = load i64, i64* %13, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %13, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load i64, i64* @AR5K_CTL_11A, align 8
  %55 = load i64, i64* %13, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %53, %49
  br label %78

58:                                               ; preds = %2
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %60 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AR5K_BWMODE_40MHZ, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* @AR5K_CTL_TURBOG, align 8
  %66 = load i64, i64* %13, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %13, align 8
  br label %72

68:                                               ; preds = %58
  %69 = load i64, i64* @AR5K_CTL_11G, align 8
  %70 = load i64, i64* %13, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %68, %64
  br label %78

73:                                               ; preds = %2
  %74 = load i64, i64* @AR5K_CTL_11B, align 8
  %75 = load i64, i64* %13, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %13, align 8
  br label %78

77:                                               ; preds = %2
  br label %143

78:                                               ; preds = %73, %72, %57
  store i64 0, i64* %12, align 8
  br label %79

79:                                               ; preds = %95, %78
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %82 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ult i64 %80, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load i64*, i64** %8, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %13, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i64, i64* %12, align 8
  store i64 %93, i64* %14, align 8
  br label %98

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %79

98:                                               ; preds = %92, %79
  %99 = load i64, i64* %14, align 8
  %100 = icmp eq i64 %99, 255
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %143

102:                                              ; preds = %98
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* @AR5K_EEPROM_N_EDGES, align 8
  %105 = mul i64 %103, %104
  store i64 %105, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %106

106:                                              ; preds = %129, %102
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* @AR5K_EEPROM_N_EDGES, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %106
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %11, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %7, align 8
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %115, i64 %116
  %118 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sle i64 %114, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %7, align 8
  %123 = load i64, i64* %11, align 8
  %124 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %122, i64 %123
  %125 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %121, %110
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %12, align 8
  br label %106

132:                                              ; preds = %106
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @min(i32 %136, i32 %137)
  %139 = mul nsw i32 4, %138
  %140 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %141 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  br label %143

143:                                              ; preds = %77, %101, %135, %132
  ret void
}

declare dso_local %struct.ath_regulatory* @ath5k_hw_regulatory(%struct.ath5k_hw*) #1

declare dso_local i64 @ath_regd_get_band_ctl(%struct.ath_regulatory*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
