; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_packet_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_packet_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_port** }
%struct.mlxsw_sp_port = type { i64 }
%struct.sk_buff = type { i64 }
%struct.skb_shared_hwtstamps = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.sk_buff*, i64, i32, %struct.skb_shared_hwtstamps*)* @mlxsw_sp1_ptp_packet_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_ptp_packet_finish(%struct.mlxsw_sp* %0, %struct.sk_buff* %1, i64 %2, i32 %3, %struct.skb_shared_hwtstamps* %4) #0 {
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.skb_shared_hwtstamps*, align 8
  %11 = alloca %struct.mlxsw_sp_port*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.skb_shared_hwtstamps* %4, %struct.skb_shared_hwtstamps** %10, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %14, i64 %15
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %16, align 8
  store %struct.mlxsw_sp_port* %17, %struct.mlxsw_sp_port** %11, align 8
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %19 = icmp ne %struct.mlxsw_sp_port* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %25, %5
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %34)
  br label %59

36:                                               ; preds = %25, %20
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %10, align 8
  %41 = icmp ne %struct.skb_shared_hwtstamps* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %43)
  %45 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %10, align 8
  %46 = bitcast %struct.skb_shared_hwtstamps* %44 to i8*
  %47 = bitcast %struct.skb_shared_hwtstamps* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %52 = call i32 @mlxsw_sp_rx_listener_no_mark_func(%struct.sk_buff* %49, i64 %50, %struct.mlxsw_sp* %51)
  br label %59

53:                                               ; preds = %36
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %10, align 8
  %56 = call i32 @skb_tstamp_tx(%struct.sk_buff* %54, %struct.skb_shared_hwtstamps* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %33, %53, %48
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlxsw_sp_rx_listener_no_mark_func(%struct.sk_buff*, i64, %struct.mlxsw_sp*) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
