; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_rx_listener_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_rx_listener_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.mlxsw_sx = type { %struct.TYPE_2__*, %struct.mlxsw_sx_port** }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sx_port = type { i32, i32 }
%struct.mlxsw_sx_port_pcpu_stats = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Port %d: skb received for non-existent port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i64, i8*)* @mlxsw_sx_rx_listener_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sx_rx_listener_func(%struct.sk_buff* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_sx*, align 8
  %8 = alloca %struct.mlxsw_sx_port*, align 8
  %9 = alloca %struct.mlxsw_sx_port_pcpu_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.mlxsw_sx*
  store %struct.mlxsw_sx* %11, %struct.mlxsw_sx** %7, align 8
  %12 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %7, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %12, i32 0, i32 1
  %14 = load %struct.mlxsw_sx_port**, %struct.mlxsw_sx_port*** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %14, i64 %15
  %17 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %16, align 8
  store %struct.mlxsw_sx_port* %17, %struct.mlxsw_sx_port** %8, align 8
  %18 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %8, align 8
  %19 = icmp ne %struct.mlxsw_sx_port* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %7, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @dev_warn_ratelimited(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %70

32:                                               ; preds = %3
  %33 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %8, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %8, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.mlxsw_sx_port_pcpu_stats* @this_cpu_ptr(i32 %40)
  store %struct.mlxsw_sx_port_pcpu_stats* %41, %struct.mlxsw_sx_port_pcpu_stats** %9, align 8
  %42 = load %struct.mlxsw_sx_port_pcpu_stats*, %struct.mlxsw_sx_port_pcpu_stats** %9, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sx_port_pcpu_stats, %struct.mlxsw_sx_port_pcpu_stats* %42, i32 0, i32 0
  %44 = call i32 @u64_stats_update_begin(i32* %43)
  %45 = load %struct.mlxsw_sx_port_pcpu_stats*, %struct.mlxsw_sx_port_pcpu_stats** %9, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sx_port_pcpu_stats, %struct.mlxsw_sx_port_pcpu_stats* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mlxsw_sx_port_pcpu_stats*, %struct.mlxsw_sx_port_pcpu_stats** %9, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sx_port_pcpu_stats, %struct.mlxsw_sx_port_pcpu_stats* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.mlxsw_sx_port_pcpu_stats*, %struct.mlxsw_sx_port_pcpu_stats** %9, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sx_port_pcpu_stats, %struct.mlxsw_sx_port_pcpu_stats* %58, i32 0, i32 0
  %60 = call i32 @u64_stats_update_end(i32* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @eth_type_trans(%struct.sk_buff* %61, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @netif_receive_skb(%struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %32, %24
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i64) #1

declare dso_local %struct.mlxsw_sx_port_pcpu_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
