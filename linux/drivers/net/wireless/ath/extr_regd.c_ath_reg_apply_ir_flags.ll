; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_ir_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_ir_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.ath_regulatory = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.ath_regulatory*, i32)* @ath_reg_apply_ir_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_reg_apply_ir_flags(%struct.wiphy* %0, %struct.ath_regulatory* %1, i32 %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.ath_regulatory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.ath_regulatory* %1, %struct.ath_regulatory** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %9 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %9, align 8
  %11 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %12 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, i64 %11
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  store %struct.ieee80211_supported_band* %13, %struct.ieee80211_supported_band** %7, align 8
  %14 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %15 = icmp ne %struct.ieee80211_supported_band* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %39

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %34 [
    i32 129, label %19
    i32 128, label %24
  ]

19:                                               ; preds = %17
  %20 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %21 = call i32 @ath_force_clear_no_ir_freq(%struct.wiphy* %20, i32 2467)
  %22 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %23 = call i32 @ath_force_clear_no_ir_freq(%struct.wiphy* %22, i32 2472)
  br label %39

24:                                               ; preds = %17
  %25 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %26 = call i32 @ath_reg_dyn_country_user_allow(%struct.ath_regulatory* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %39

29:                                               ; preds = %24
  %30 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %31 = call i32 @ath_force_clear_no_ir_freq(%struct.wiphy* %30, i32 2467)
  %32 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %33 = call i32 @ath_force_clear_no_ir_freq(%struct.wiphy* %32, i32 2472)
  br label %39

34:                                               ; preds = %17
  %35 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %36 = call i32 @ath_force_no_ir_freq(%struct.wiphy* %35, i32 2467)
  %37 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %38 = call i32 @ath_force_no_ir_freq(%struct.wiphy* %37, i32 2472)
  br label %39

39:                                               ; preds = %16, %34, %29, %28, %19
  ret void
}

declare dso_local i32 @ath_force_clear_no_ir_freq(%struct.wiphy*, i32) #1

declare dso_local i32 @ath_reg_dyn_country_user_allow(%struct.ath_regulatory*) #1

declare dso_local i32 @ath_force_no_ir_freq(%struct.wiphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
