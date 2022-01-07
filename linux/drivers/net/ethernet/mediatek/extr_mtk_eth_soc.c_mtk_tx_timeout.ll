; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mtk_mac = type { i64, %struct.mtk_eth* }
%struct.mtk_eth = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"transmit timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mtk_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mtk_mac*, align 8
  %4 = alloca %struct.mtk_eth*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.mtk_mac* @netdev_priv(%struct.net_device* %5)
  store %struct.mtk_mac* %6, %struct.mtk_mac** %3, align 8
  %7 = load %struct.mtk_mac*, %struct.mtk_mac** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %7, i32 0, i32 1
  %9 = load %struct.mtk_eth*, %struct.mtk_eth** %8, align 8
  store %struct.mtk_eth* %9, %struct.mtk_eth** %4, align 8
  %10 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %13 = load %struct.mtk_mac*, %struct.mtk_mac** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %23 = load i32, i32* @tx_err, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @netif_err(%struct.mtk_eth* %22, i32 %23, %struct.net_device* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %26, i32 0, i32 0
  %28 = call i32 @schedule_work(i32* %27)
  ret void
}

declare dso_local %struct.mtk_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.mtk_eth*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
