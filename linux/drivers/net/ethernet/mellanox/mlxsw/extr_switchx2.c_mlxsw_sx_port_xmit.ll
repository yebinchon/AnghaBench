; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sx_port = type { %struct.TYPE_2__*, i32, %struct.mlxsw_sx* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sx = type { i32 }
%struct.mlxsw_sx_port_pcpu_stats = type { i32, i32, i32 }
%struct.mlxsw_tx_info = type { i32, i32 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@MLXSW_TXHDR_LEN = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @mlxsw_sx_port_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_port_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlxsw_sx_port*, align 8
  %7 = alloca %struct.mlxsw_sx*, align 8
  %8 = alloca %struct.mlxsw_sx_port_pcpu_stats*, align 8
  %9 = alloca %struct.mlxsw_tx_info, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.mlxsw_sx_port* @netdev_priv(%struct.net_device* %13)
  store %struct.mlxsw_sx_port* %14, %struct.mlxsw_sx_port** %6, align 8
  %15 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %15, i32 0, i32 2
  %17 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %16, align 8
  store %struct.mlxsw_sx* %17, %struct.mlxsw_sx** %7, align 8
  %18 = getelementptr inbounds %struct.mlxsw_tx_info, %struct.mlxsw_tx_info* %9, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.mlxsw_tx_info, %struct.mlxsw_tx_info* %9, i32 0, i32 1
  %20 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @memset(i32 %25, i32 0, i32 4)
  %27 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %7, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @mlxsw_core_skb_transmit_busy(i32 %29, %struct.mlxsw_tx_info* %9)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %33, i32* %3, align 4
  br label %110

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i64 @skb_headroom(%struct.sk_buff* %35)
  %37 = load i64, i64* @MLXSW_TXHDR_LEN, align 8
  %38 = icmp slt i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %12, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i64, i64* @MLXSW_TXHDR_LEN, align 8
  %46 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %44, i64 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %4, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %42
  %50 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @this_cpu_inc(i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %57 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %56)
  %58 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %110

59:                                               ; preds = %42
  %60 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %61 = call i32 @dev_consume_skb_any(%struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %59, %34
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @mlxsw_sx_txhdr_construct(%struct.sk_buff* %63, %struct.mlxsw_tx_info* %9)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MLXSW_TXHDR_LEN, align 8
  %69 = sub nsw i64 %67, %68
  store i64 %69, i64* %10, align 8
  %70 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %7, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @mlxsw_core_skb_transmit(i32 %72, %struct.sk_buff* %73, %struct.mlxsw_tx_info* %9)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %62
  %78 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %79 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = call %struct.mlxsw_sx_port_pcpu_stats* @this_cpu_ptr(%struct.TYPE_2__* %80)
  store %struct.mlxsw_sx_port_pcpu_stats* %81, %struct.mlxsw_sx_port_pcpu_stats** %8, align 8
  %82 = load %struct.mlxsw_sx_port_pcpu_stats*, %struct.mlxsw_sx_port_pcpu_stats** %8, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sx_port_pcpu_stats, %struct.mlxsw_sx_port_pcpu_stats* %82, i32 0, i32 0
  %84 = call i32 @u64_stats_update_begin(i32* %83)
  %85 = load %struct.mlxsw_sx_port_pcpu_stats*, %struct.mlxsw_sx_port_pcpu_stats** %8, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sx_port_pcpu_stats, %struct.mlxsw_sx_port_pcpu_stats* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.mlxsw_sx_port_pcpu_stats*, %struct.mlxsw_sx_port_pcpu_stats** %8, align 8
  %91 = getelementptr inbounds %struct.mlxsw_sx_port_pcpu_stats, %struct.mlxsw_sx_port_pcpu_stats* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  %96 = load %struct.mlxsw_sx_port_pcpu_stats*, %struct.mlxsw_sx_port_pcpu_stats** %8, align 8
  %97 = getelementptr inbounds %struct.mlxsw_sx_port_pcpu_stats, %struct.mlxsw_sx_port_pcpu_stats* %96, i32 0, i32 0
  %98 = call i32 @u64_stats_update_end(i32* %97)
  br label %108

99:                                               ; preds = %62
  %100 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %101 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @this_cpu_inc(i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %106)
  br label %108

108:                                              ; preds = %99, %77
  %109 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %49, %32
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.mlxsw_sx_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @mlxsw_core_skb_transmit_busy(i32, %struct.mlxsw_tx_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i64) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @mlxsw_sx_txhdr_construct(%struct.sk_buff*, %struct.mlxsw_tx_info*) #1

declare dso_local i32 @mlxsw_core_skb_transmit(i32, %struct.sk_buff*, %struct.mlxsw_tx_info*) #1

declare dso_local %struct.mlxsw_sx_port_pcpu_stats* @this_cpu_ptr(%struct.TYPE_2__*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
