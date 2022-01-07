; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_can_offload_gre4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_can_offload_gre4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.ip_tunnel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@TUNNEL_KEY = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, i32)* @mlxsw_sp_ipip_can_offload_gre4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_ipip_can_offload_gre4(%struct.mlxsw_sp* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_tunnel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %11)
  store %struct.ip_tunnel* %12, %struct.ip_tunnel** %7, align 8
  %13 = load i32, i32* @TUNNEL_KEY, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %15 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %28 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %3
  %36 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %37 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV4, align 4
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call i64 @mlxsw_sp_ipip_tunnel_complete(i32 %51, %struct.net_device* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %50, %47, %44, %35, %3
  %56 = phi i1 [ false, %47 ], [ false, %44 ], [ false, %35 ], [ false, %3 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  ret i32 %57
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mlxsw_sp_ipip_tunnel_complete(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
