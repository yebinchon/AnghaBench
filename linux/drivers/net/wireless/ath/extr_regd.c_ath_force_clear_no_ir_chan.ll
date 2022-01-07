; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_force_clear_no_ir_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_force_clear_no_ir_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_reg_rule = type { i32 }

@NL80211_RRF_NO_IR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.ieee80211_channel*)* @ath_force_clear_no_ir_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_force_clear_no_ir_chan(%struct.wiphy* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211_reg_rule*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %7 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @MHZ_TO_KHZ(i32 %9)
  %11 = call %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy* %6, i32 %10)
  store %struct.ieee80211_reg_rule* %11, %struct.ieee80211_reg_rule** %5, align 8
  %12 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %13 = call i64 @IS_ERR(%struct.ieee80211_reg_rule* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NL80211_RRF_NO_IR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %16
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %23
  br label %38

38:                                               ; preds = %15, %37, %16
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
