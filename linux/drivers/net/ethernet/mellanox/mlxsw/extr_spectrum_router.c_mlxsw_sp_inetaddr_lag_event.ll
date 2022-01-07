; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_inetaddr_lag_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_inetaddr_lag_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@MLXSW_SP_DEFAULT_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, %struct.netlink_ext_ack*)* @mlxsw_sp_inetaddr_lag_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_inetaddr_lag_event(%struct.net_device* %0, i64 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call i64 @netif_is_bridge_port(%struct.net_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %19

12:                                               ; preds = %3
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @MLXSW_SP_DEFAULT_VID, align 4
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %18 = call i32 @__mlxsw_sp_inetaddr_lag_event(%struct.net_device* %13, %struct.net_device* %14, i64 %15, i32 %16, %struct.netlink_ext_ack* %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i64 @netif_is_bridge_port(%struct.net_device*) #1

declare dso_local i32 @__mlxsw_sp_inetaddr_lag_event(%struct.net_device*, %struct.net_device*, i64, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
