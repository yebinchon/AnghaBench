; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_get_rate_pcal_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_get_rate_pcal_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64*, %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info* }
%struct.ieee80211_channel = type { i64, i32 }
%struct.ath5k_rate_pcal_info = type { i64, i8*, i8*, i8*, i8* }

@AR5K_EEPROM_MODE_11A = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11B = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.ieee80211_channel*, %struct.ath5k_rate_pcal_info*)* @ath5k_get_rate_pcal_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_get_rate_pcal_data(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1, %struct.ath5k_rate_pcal_info* %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ath5k_rate_pcal_info*, align 8
  %7 = alloca %struct.ath5k_eeprom_info*, align 8
  %8 = alloca %struct.ath5k_rate_pcal_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store %struct.ath5k_rate_pcal_info* %2, %struct.ath5k_rate_pcal_info** %6, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %17, %struct.ath5k_eeprom_info** %7, align 8
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %14, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %35 [
    i32 130, label %24
    i32 129, label %29
    i32 128, label %34
  ]

24:                                               ; preds = %3
  %25 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %26 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %25, i32 0, i32 3
  %27 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %26, align 8
  store %struct.ath5k_rate_pcal_info* %27, %struct.ath5k_rate_pcal_info** %8, align 8
  %28 = load i64, i64* @AR5K_EEPROM_MODE_11A, align 8
  store i64 %28, i64* %11, align 8
  br label %40

29:                                               ; preds = %3
  %30 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %31 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %30, i32 0, i32 2
  %32 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %31, align 8
  store %struct.ath5k_rate_pcal_info* %32, %struct.ath5k_rate_pcal_info** %8, align 8
  %33 = load i64, i64* @AR5K_EEPROM_MODE_11B, align 8
  store i64 %33, i64* %11, align 8
  br label %40

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %3, %34
  %36 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %37 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %36, i32 0, i32 1
  %38 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %37, align 8
  store %struct.ath5k_rate_pcal_info* %38, %struct.ath5k_rate_pcal_info** %8, align 8
  %39 = load i64, i64* @AR5K_EEPROM_MODE_11G, align 8
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %35, %29, %24
  %41 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %42 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %46, 1
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %50 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %49, i64 0
  %51 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %97

55:                                               ; preds = %40
  %56 = load i64, i64* %14, align 8
  %57 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %57, i64 %58
  %60 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %56, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i64, i64* %12, align 8
  store i64 %64, i64* %10, align 8
  store i64 %64, i64* %9, align 8
  br label %97

65:                                               ; preds = %55
  store i64 0, i64* %13, align 8
  br label %66

66:                                               ; preds = %93, %65
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp ule i64 %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  %71 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %71, i64 %72
  %74 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i64, i64* %13, align 8
  store i64 %79, i64* %10, align 8
  store i64 %79, i64* %9, align 8
  br label %97

80:                                               ; preds = %70
  %81 = load i64, i64* %14, align 8
  %82 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %82, i64 %83
  %85 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %81, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i64, i64* %13, align 8
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %10, align 8
  %91 = sub i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %97

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %13, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %13, align 8
  br label %66

96:                                               ; preds = %66
  br label %97

97:                                               ; preds = %96, %88, %78, %63, %54
  %98 = load i64, i64* %14, align 8
  %99 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %6, align 8
  %100 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %102, i64 %103
  %105 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %107, i64 %108
  %110 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %112, i64 %113
  %115 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %117, i64 %118
  %120 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @ath5k_get_interpolated_value(i64 %101, i64 %106, i64 %111, i8* %116, i8* %121)
  %123 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %6, align 8
  %124 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load i64, i64* %14, align 8
  %126 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %126, i64 %127
  %129 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %131, i64 %132
  %134 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %136, i64 %137
  %139 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %141, i64 %142
  %144 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @ath5k_get_interpolated_value(i64 %125, i64 %130, i64 %135, i8* %140, i8* %145)
  %147 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %6, align 8
  %148 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load i64, i64* %14, align 8
  %150 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %151 = load i64, i64* %9, align 8
  %152 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %150, i64 %151
  %153 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %156 = load i64, i64* %10, align 8
  %157 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %155, i64 %156
  %158 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %161 = load i64, i64* %9, align 8
  %162 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %160, i64 %161
  %163 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %165, i64 %166
  %168 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = call i8* @ath5k_get_interpolated_value(i64 %149, i64 %154, i64 %159, i8* %164, i8* %169)
  %171 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %6, align 8
  %172 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %171, i32 0, i32 2
  store i8* %170, i8** %172, align 8
  %173 = load i64, i64* %14, align 8
  %174 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %175 = load i64, i64* %9, align 8
  %176 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %174, i64 %175
  %177 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %180 = load i64, i64* %10, align 8
  %181 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %179, i64 %180
  %182 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %185 = load i64, i64* %9, align 8
  %186 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %184, i64 %185
  %187 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %8, align 8
  %190 = load i64, i64* %10, align 8
  %191 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %189, i64 %190
  %192 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i8* @ath5k_get_interpolated_value(i64 %173, i64 %178, i64 %183, i8* %188, i8* %193)
  %195 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %6, align 8
  %196 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  ret void
}

declare dso_local i8* @ath5k_get_interpolated_value(i64, i64, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
