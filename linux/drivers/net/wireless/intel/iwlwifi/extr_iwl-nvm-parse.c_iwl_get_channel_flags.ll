; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_get_channel_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_get_channel_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_cfg = type { i32 }

@IEEE80211_CHAN_NO_HT40 = common dso_local global i32 0, align 4
@NVM_CHANNEL_40MHZ = common dso_local global i32 0, align 4
@LAST_2GHZ_HT_PLUS = common dso_local global i64 0, align 8
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@FIRST_2GHZ_HT_MINUS = common dso_local global i64 0, align 8
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@NUM_2GHZ_CHANNELS = common dso_local global i32 0, align 4
@NVM_CHANNEL_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@NVM_CHANNEL_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_160MHZ = common dso_local global i32 0, align 4
@NVM_CHANNEL_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@NVM_CHANNEL_ACTIVE = common dso_local global i32 0, align 4
@NVM_CHANNEL_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NVM_CHANNEL_INDOOR_ONLY = common dso_local global i32 0, align 4
@IEEE80211_CHAN_INDOOR_ONLY = common dso_local global i32 0, align 4
@NVM_CHANNEL_GO_CONCURRENT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_IR_CONCURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32, %struct.iwl_cfg*)* @iwl_get_channel_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_get_channel_flags(i64 %0, i32 %1, i32 %2, i32 %3, %struct.iwl_cfg* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_cfg*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.iwl_cfg* %4, %struct.iwl_cfg** %10, align 8
  %12 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @NVM_CHANNEL_40MHZ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @LAST_2GHZ_HT_PLUS, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @FIRST_2GHZ_HT_MINUS, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %33, %29
  br label %62

39:                                               ; preds = %15, %5
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @NVM_CHANNEL_40MHZ, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @NUM_2GHZ_CHANNELS, align 4
  %47 = sub nsw i32 %45, %46
  %48 = srem i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %60

55:                                               ; preds = %44
  %56 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %39
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @NVM_CHANNEL_80MHZ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @NVM_CHANNEL_160MHZ, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @IEEE80211_CHAN_NO_160MHZ, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @NVM_CHANNEL_IBSS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @NVM_CHANNEL_ACTIVE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @NVM_CHANNEL_RADAR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %103, %98
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @NVM_CHANNEL_INDOOR_ONLY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* @IEEE80211_CHAN_INDOOR_ONLY, align 4
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %112, %107
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @NVM_CHANNEL_GO_CONCURRENT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* @IEEE80211_CHAN_IR_CONCURRENT, align 4
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %126, %121, %116
  %131 = load i32, i32* %11, align 4
  ret i32 %131
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
