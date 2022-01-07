; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_nvm_get_regdom_bw_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_nvm_get_regdom_bw_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_cfg = type { i32 }

@NL80211_RRF_NO_HT40 = common dso_local global i32 0, align 4
@NUM_2GHZ_CHANNELS = common dso_local global i32 0, align 4
@NVM_CHANNEL_40MHZ = common dso_local global i64 0, align 8
@LAST_2GHZ_HT_PLUS = common dso_local global i64 0, align 8
@NL80211_RRF_NO_HT40PLUS = common dso_local global i32 0, align 4
@FIRST_2GHZ_HT_MINUS = common dso_local global i64 0, align 8
@NL80211_RRF_NO_HT40MINUS = common dso_local global i32 0, align 4
@NVM_CHANNEL_80MHZ = common dso_local global i64 0, align 8
@NL80211_RRF_NO_80MHZ = common dso_local global i32 0, align 4
@NVM_CHANNEL_160MHZ = common dso_local global i64 0, align 8
@NL80211_RRF_NO_160MHZ = common dso_local global i32 0, align 4
@NVM_CHANNEL_ACTIVE = common dso_local global i64 0, align 8
@NL80211_RRF_NO_IR = common dso_local global i32 0, align 4
@NVM_CHANNEL_RADAR = common dso_local global i64 0, align 8
@NL80211_RRF_DFS = common dso_local global i32 0, align 4
@NVM_CHANNEL_INDOOR_ONLY = common dso_local global i64 0, align 8
@NL80211_RRF_NO_OUTDOOR = common dso_local global i32 0, align 4
@NVM_CHANNEL_GO_CONCURRENT = common dso_local global i64 0, align 8
@NL80211_RRF_GO_CONCURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64, %struct.iwl_cfg*)* @iwl_nvm_get_regdom_bw_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_nvm_get_regdom_bw_flags(i64* %0, i32 %1, i64 %2, %struct.iwl_cfg* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.iwl_cfg*, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.iwl_cfg* %3, %struct.iwl_cfg** %8, align 8
  %10 = load i32, i32* @NL80211_RRF_NO_HT40, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NUM_2GHZ_CHANNELS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @NVM_CHANNEL_40MHZ, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load i64*, i64** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LAST_2GHZ_HT_PLUS, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32, i32* @NL80211_RRF_NO_HT40PLUS, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %19
  %33 = load i64*, i64** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FIRST_2GHZ_HT_MINUS, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* @NL80211_RRF_NO_HT40MINUS, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %40, %32
  br label %69

46:                                               ; preds = %14, %4
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @NVM_CHANNEL_40MHZ, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @NUM_2GHZ_CHANNELS, align 4
  %54 = sub nsw i32 %52, %53
  %55 = srem i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* @NL80211_RRF_NO_HT40PLUS, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %67

62:                                               ; preds = %51
  %63 = load i32, i32* @NL80211_RRF_NO_HT40MINUS, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %45
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @NVM_CHANNEL_80MHZ, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @NL80211_RRF_NO_80MHZ, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @NVM_CHANNEL_160MHZ, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @NL80211_RRF_NO_160MHZ, align 4
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @NVM_CHANNEL_ACTIVE, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @NL80211_RRF_NO_IR, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @NVM_CHANNEL_RADAR, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @NL80211_RRF_DFS, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @NVM_CHANNEL_INDOOR_ONLY, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @NL80211_RRF_NO_OUTDOOR, align 4
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @NVM_CHANNEL_GO_CONCURRENT, align 8
  %117 = and i64 %115, %116
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @NL80211_RRF_NO_IR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @NL80211_RRF_GO_CONCURRENT, align 4
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %124, %119, %114
  %129 = load i32, i32* %9, align 4
  ret i32 %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
