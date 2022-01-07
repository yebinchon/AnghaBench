; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx_h_get_txpath.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx_h_get_txpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }

@ATH10K_MAC_TX_HTT = common dso_local global i32 0, align 4
@ATH10K_FW_FEATURE_HAS_WMI_MGMT_TX = common dso_local global i32 0, align 4
@WMI_SERVICE_MGMT_TX_WMI = common dso_local global i32 0, align 4
@ATH10K_MAC_TX_WMI_MGMT = common dso_local global i32 0, align 4
@ATH10K_MAC_TX_HTT_MGMT = common dso_local global i32 0, align 4
@ATH10K_MAC_TX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, i32)* @ath10k_mac_tx_h_get_txpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_tx_h_get_txpath(%struct.ath10k* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %41 [
    i32 128, label %9
    i32 129, label %9
    i32 131, label %9
    i32 130, label %11
  ]

9:                                                ; preds = %3, %3, %3
  %10 = load i32, i32* @ATH10K_MAC_TX_HTT, align 4
  store i32 %10, i32* %4, align 4
  br label %43

11:                                               ; preds = %3
  %12 = load i32, i32* @ATH10K_FW_FEATURE_HAS_WMI_MGMT_TX, align 4
  %13 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @test_bit(i32 %12, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* @WMI_SERVICE_MGMT_TX_WMI, align 4
  %23 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %24 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @test_bit(i32 %22, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21, %11
  %30 = load i32, i32* @ATH10K_MAC_TX_WMI_MGMT, align 4
  store i32 %30, i32* %4, align 4
  br label %43

31:                                               ; preds = %21
  %32 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %33 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 3
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ATH10K_MAC_TX_HTT, align 4
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @ATH10K_MAC_TX_HTT_MGMT, align 4
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @ATH10K_MAC_TX_UNKNOWN, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %39, %37, %29, %9
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
