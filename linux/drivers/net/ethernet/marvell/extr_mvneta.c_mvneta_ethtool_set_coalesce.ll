; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_ethtool_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_ethtool_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32 }
%struct.mvneta_port = type { %struct.mvneta_tx_queue*, %struct.mvneta_rx_queue* }
%struct.mvneta_tx_queue = type { i32 }
%struct.mvneta_rx_queue = type { i32, i32 }

@rxq_number = common dso_local global i32 0, align 4
@txq_number = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @mvneta_ethtool_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_ethtool_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.mvneta_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvneta_rx_queue*, align 8
  %8 = alloca %struct.mvneta_tx_queue*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.mvneta_port* @netdev_priv(%struct.net_device* %9)
  store %struct.mvneta_port* %10, %struct.mvneta_port** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %44, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @rxq_number, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %17 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %16, i32 0, i32 1
  %18 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %18, i64 %20
  store %struct.mvneta_rx_queue* %21, %struct.mvneta_rx_queue** %7, align 8
  %22 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %7, align 8
  %26 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %7, align 8
  %31 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %33 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %7, align 8
  %34 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %7, align 8
  %35 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mvneta_rx_pkts_coal_set(%struct.mvneta_port* %32, %struct.mvneta_rx_queue* %33, i32 %36)
  %38 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %39 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %7, align 8
  %40 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %7, align 8
  %41 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mvneta_rx_time_coal_set(%struct.mvneta_port* %38, %struct.mvneta_rx_queue* %39, i32 %42)
  br label %44

44:                                               ; preds = %15
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %11

47:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %70, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @txq_number, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %54 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %53, i32 0, i32 0
  %55 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %55, i64 %57
  store %struct.mvneta_tx_queue* %58, %struct.mvneta_tx_queue** %8, align 8
  %59 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %8, align 8
  %63 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %65 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %8, align 8
  %66 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %8, align 8
  %67 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mvneta_tx_done_pkts_coal_set(%struct.mvneta_port* %64, %struct.mvneta_tx_queue* %65, i32 %68)
  br label %70

70:                                               ; preds = %52
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %48

73:                                               ; preds = %48
  ret i32 0
}

declare dso_local %struct.mvneta_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvneta_rx_pkts_coal_set(%struct.mvneta_port*, %struct.mvneta_rx_queue*, i32) #1

declare dso_local i32 @mvneta_rx_time_coal_set(%struct.mvneta_port*, %struct.mvneta_rx_queue*, i32) #1

declare dso_local i32 @mvneta_tx_done_pkts_coal_set(%struct.mvneta_port*, %struct.mvneta_tx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
