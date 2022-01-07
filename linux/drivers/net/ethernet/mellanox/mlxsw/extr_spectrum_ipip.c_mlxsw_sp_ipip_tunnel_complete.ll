; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_tunnel_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_tunnel_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.net_device*)* @mlxsw_sp_ipip_tunnel_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_ipip_tunnel_complete(i32 %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %union.mlxsw_sp_l3addr, align 4
  %6 = alloca %union.mlxsw_sp_l3addr, align 4
  store i32 %0, i32* %3, align 4
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call i32 @mlxsw_sp_ipip_netdev_saddr(i32 %7, %struct.net_device* %8)
  %10 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @mlxsw_sp_ipip_netdev_daddr(i32 %11, %struct.net_device* %12)
  %14 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mlxsw_sp_l3addr_is_zero(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mlxsw_sp_l3addr_is_zero(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %2
  %26 = phi i1 [ false, %2 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @mlxsw_sp_ipip_netdev_saddr(i32, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_ipip_netdev_daddr(i32, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_l3addr_is_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
