; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }
%struct.mvpp2_port = type { i32, i32, i64, %struct.mvpp2_tx_queue**, i32, %struct.mvpp2_rx_queue** }
%struct.mvpp2_tx_queue = type { i32 }
%struct.mvpp2_rx_queue = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @mvpp2_ethtool_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_ethtool_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvpp2_rx_queue*, align 8
  %8 = alloca %struct.mvpp2_tx_queue*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %9)
  store %struct.mvpp2_port* %10, %struct.mvpp2_port** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %14 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %19 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %18, i32 0, i32 5
  %20 = load %struct.mvpp2_rx_queue**, %struct.mvpp2_rx_queue*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %20, i64 %22
  %24 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %23, align 8
  store %struct.mvpp2_rx_queue* %24, %struct.mvpp2_rx_queue** %7, align 8
  %25 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %7, align 8
  %29 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %7, align 8
  %34 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %36 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %7, align 8
  %37 = call i32 @mvpp2_rx_pkts_coal_set(%struct.mvpp2_port* %35, %struct.mvpp2_rx_queue* %36)
  %38 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %39 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %7, align 8
  %40 = call i32 @mvpp2_rx_time_coal_set(%struct.mvpp2_port* %38, %struct.mvpp2_rx_queue* %39)
  br label %41

41:                                               ; preds = %17
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %11

44:                                               ; preds = %11
  %45 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %46 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %54 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %56 = call i32 @mvpp2_tx_time_coal_set(%struct.mvpp2_port* %55)
  br label %57

57:                                               ; preds = %49, %44
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %86, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %61 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %58
  %65 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %66 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %65, i32 0, i32 3
  %67 = load %struct.mvpp2_tx_queue**, %struct.mvpp2_tx_queue*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %67, i64 %69
  %71 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %70, align 8
  store %struct.mvpp2_tx_queue* %71, %struct.mvpp2_tx_queue** %8, align 8
  %72 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %8, align 8
  %76 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %78 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %64
  %82 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %83 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %8, align 8
  %84 = call i32 @mvpp2_tx_pkts_coal_set(%struct.mvpp2_port* %82, %struct.mvpp2_tx_queue* %83)
  br label %85

85:                                               ; preds = %81, %64
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %58

89:                                               ; preds = %58
  ret i32 0
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvpp2_rx_pkts_coal_set(%struct.mvpp2_port*, %struct.mvpp2_rx_queue*) #1

declare dso_local i32 @mvpp2_rx_time_coal_set(%struct.mvpp2_port*, %struct.mvpp2_rx_queue*) #1

declare dso_local i32 @mvpp2_tx_time_coal_set(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_tx_pkts_coal_set(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
