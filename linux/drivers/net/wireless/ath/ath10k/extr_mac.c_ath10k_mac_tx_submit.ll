; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.ath10k_htt }
%struct.ath10k_htt = type { i32 }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to transmit packet, dropping: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32, %struct.sk_buff*)* @ath10k_mac_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_tx_submit(%struct.ath10k* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ath10k_htt*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 1
  store %struct.ath10k_htt* %12, %struct.ath10k_htt** %9, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %33 [
    i32 131, label %16
    i32 130, label %21
    i32 128, label %25
    i32 129, label %29
  ]

16:                                               ; preds = %4
  %17 = load %struct.ath10k_htt*, %struct.ath10k_htt** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call i32 @ath10k_htt_tx(%struct.ath10k_htt* %17, i32 %18, %struct.sk_buff* %19)
  store i32 %20, i32* %10, align 4
  br label %33

21:                                               ; preds = %4
  %22 = load %struct.ath10k_htt*, %struct.ath10k_htt** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = call i32 @ath10k_htt_mgmt_tx(%struct.ath10k_htt* %22, %struct.sk_buff* %23)
  store i32 %24, i32* %10, align 4
  br label %33

25:                                               ; preds = %4
  %26 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = call i32 @ath10k_mac_tx_wmi_mgmt(%struct.ath10k* %26, %struct.sk_buff* %27)
  store i32 %28, i32* %10, align 4
  br label %33

29:                                               ; preds = %4
  %30 = call i32 @WARN_ON_ONCE(i32 1)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %4, %29, %25, %21, %16
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @ath10k_warn(%struct.ath10k* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %41 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = call i32 @ieee80211_free_txskb(i32 %42, %struct.sk_buff* %43)
  br label %45

45:                                               ; preds = %36, %33
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local i32 @ath10k_htt_tx(%struct.ath10k_htt*, i32, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_htt_mgmt_tx(%struct.ath10k_htt*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_mac_tx_wmi_mgmt(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
