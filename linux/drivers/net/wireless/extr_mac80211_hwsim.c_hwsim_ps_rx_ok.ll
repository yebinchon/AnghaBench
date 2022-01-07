; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_hwsim_ps_rx_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_hwsim_ps_rx_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac80211_hwsim_data = type { i32, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac80211_hwsim_data*, %struct.sk_buff*)* @hwsim_ps_rx_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwsim_ps_rx_ok(%struct.mac80211_hwsim_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac80211_hwsim_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.mac80211_hwsim_data* %0, %struct.mac80211_hwsim_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %7 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 130, label %9
    i32 129, label %10
    i32 131, label %11
    i32 128, label %12
  ]

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %14 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 4
  %23 = call i32 @mac80211_hwsim_addr_match(%struct.mac80211_hwsim_data* %18, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %27 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  store i32 1, i32* %3, align 4
  br label %30

28:                                               ; preds = %17, %12
  store i32 0, i32* %3, align 4
  br label %30

29:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %25, %11, %10, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @mac80211_hwsim_addr_match(%struct.mac80211_hwsim_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
