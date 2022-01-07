; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_add_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_add_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rxq = type { i32, i32 }
%struct.hinic_dev = type { i32 }

@rx_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_rxq*)* @rx_add_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_add_napi(%struct.hinic_rxq* %0) #0 {
  %2 = alloca %struct.hinic_rxq*, align 8
  %3 = alloca %struct.hinic_dev*, align 8
  store %struct.hinic_rxq* %0, %struct.hinic_rxq** %2, align 8
  %4 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %5 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.hinic_dev* @netdev_priv(i32 %6)
  store %struct.hinic_dev* %7, %struct.hinic_dev** %3, align 8
  %8 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %9 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %12 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %11, i32 0, i32 0
  %13 = load i32, i32* @rx_poll, align 4
  %14 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netif_napi_add(i32 %10, i32* %12, i32 %13, i32 %16)
  %18 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %19 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %18, i32 0, i32 0
  %20 = call i32 @napi_enable(i32* %19)
  ret void
}

declare dso_local %struct.hinic_dev* @netdev_priv(i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
