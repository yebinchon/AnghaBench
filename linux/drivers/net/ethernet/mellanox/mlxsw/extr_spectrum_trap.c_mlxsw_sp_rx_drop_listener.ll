; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_rx_drop_listener.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_rx_drop_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink_port = type { i32 }
%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp = type { i32, %struct.mlxsw_sp_port** }
%struct.devlink = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i64, i8*)* @mlxsw_sp_rx_drop_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_rx_drop_listener(%struct.sk_buff* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.devlink_port*, align 8
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca %struct.devlink*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.mlxsw_sp* @devlink_trap_ctx_priv(i8* %11)
  store %struct.mlxsw_sp* %12, %struct.mlxsw_sp** %9, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 1
  %15 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %15, i64 %16
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %17, align 8
  store %struct.mlxsw_sp_port* %18, %struct.mlxsw_sp_port** %8, align 8
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %23 = call i64 @mlxsw_sp_rx_listener(%struct.mlxsw_sp* %19, %struct.sk_buff* %20, i64 %21, %struct.mlxsw_sp_port* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %46

26:                                               ; preds = %3
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.devlink* @priv_to_devlink(i32 %29)
  store %struct.devlink* %30, %struct.devlink** %10, align 8
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call %struct.devlink_port* @mlxsw_core_port_devlink_port_get(i32 %33, i64 %34)
  store %struct.devlink_port* %35, %struct.devlink_port** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @ETH_HLEN, align 4
  %38 = call i32 @skb_push(%struct.sk_buff* %36, i32 %37)
  %39 = load %struct.devlink*, %struct.devlink** %10, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %43 = call i32 @devlink_trap_report(%struct.devlink* %39, %struct.sk_buff* %40, i8* %41, %struct.devlink_port* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @consume_skb(%struct.sk_buff* %44)
  br label %46

46:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.mlxsw_sp* @devlink_trap_ctx_priv(i8*) #1

declare dso_local i64 @mlxsw_sp_rx_listener(%struct.mlxsw_sp*, %struct.sk_buff*, i64, %struct.mlxsw_sp_port*) #1

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local %struct.devlink_port* @mlxsw_core_port_devlink_port_get(i32, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @devlink_trap_report(%struct.devlink*, %struct.sk_buff*, i8*, %struct.devlink_port*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
