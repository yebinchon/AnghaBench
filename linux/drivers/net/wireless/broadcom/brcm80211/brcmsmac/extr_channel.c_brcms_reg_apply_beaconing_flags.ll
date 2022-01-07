; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_reg_apply_beaconing_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_reg_apply_beaconing_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i64, i32 }
%struct.ieee80211_reg_rule = type { i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i32 0, align 4
@NL80211_RRF_NO_IR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, i32)* @brcms_reg_apply_beaconing_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_reg_apply_beaconing_flags(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ieee80211_reg_rule*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %96, %2
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %99

14:                                               ; preds = %10
  %15 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %16 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, i64 %19
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %20, align 8
  store %struct.ieee80211_supported_band* %21, %struct.ieee80211_supported_band** %5, align 8
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %23 = icmp ne %struct.ieee80211_supported_band* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %96

25:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %92, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %95

32:                                               ; preds = %26
  %33 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %33, i32 0, i32 1
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %35, i64 %37
  store %struct.ieee80211_channel* %38, %struct.ieee80211_channel** %6, align 8
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %43 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %92

48:                                               ; preds = %32
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @MHZ_TO_KHZ(i32 %56)
  %58 = call %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy* %53, i32 %57)
  store %struct.ieee80211_reg_rule* %58, %struct.ieee80211_reg_rule** %7, align 8
  %59 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %60 = call i64 @IS_ERR(%struct.ieee80211_reg_rule* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %92

63:                                               ; preds = %52
  %64 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %65 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NL80211_RRF_NO_IR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %70, %63
  br label %91

78:                                               ; preds = %48
  %79 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %87 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %83, %78
  br label %91

91:                                               ; preds = %90, %77
  br label %92

92:                                               ; preds = %91, %62, %47
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %26

95:                                               ; preds = %26
  br label %96

96:                                               ; preds = %95, %24
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %10

99:                                               ; preds = %10
  ret void
}

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy*, i32) #1

declare dso_local i32 @MHZ_TO_KHZ(i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
