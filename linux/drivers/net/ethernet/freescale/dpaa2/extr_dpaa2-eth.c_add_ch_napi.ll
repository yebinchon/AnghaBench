; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_add_ch_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_add_ch_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, %struct.dpaa2_eth_channel** }
%struct.dpaa2_eth_channel = type { i32 }

@dpaa2_eth_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa2_eth_priv*)* @add_ch_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ch_napi(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca %struct.dpaa2_eth_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpaa2_eth_channel*, align 8
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %8 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %5
  %12 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %13 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %12, i32 0, i32 2
  %14 = load %struct.dpaa2_eth_channel**, %struct.dpaa2_eth_channel*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %14, i64 %16
  %18 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %17, align 8
  store %struct.dpaa2_eth_channel* %18, %struct.dpaa2_eth_channel** %4, align 8
  %19 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %20 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %23 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %22, i32 0, i32 0
  %24 = load i32, i32* @dpaa2_eth_poll, align 4
  %25 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %26 = call i32 @netif_napi_add(i32 %21, i32* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %5

30:                                               ; preds = %5
  ret void
}

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
