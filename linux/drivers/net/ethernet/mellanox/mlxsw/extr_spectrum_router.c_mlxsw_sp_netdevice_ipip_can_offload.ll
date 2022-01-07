; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_can_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_can_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_ipip_ops** }
%struct.mlxsw_sp_ipip_ops = type { i64 (%struct.mlxsw_sp.0*, %struct.net_device*, i32)* }
%struct.mlxsw_sp.0 = type opaque
%struct.net_device = type { i32 }

@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, i32)* @mlxsw_sp_netdevice_ipip_can_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdevice_ipip_can_offload(%struct.mlxsw_sp* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_ipip_ops*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_ipip_ops**, %struct.mlxsw_sp_ipip_ops*** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %12, i64 %14
  %16 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %15, align 8
  store %struct.mlxsw_sp_ipip_ops* %16, %struct.mlxsw_sp_ipip_ops** %7, align 8
  %17 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %7, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops, %struct.mlxsw_sp_ipip_ops* %17, i32 0, i32 0
  %19 = load i64 (%struct.mlxsw_sp.0*, %struct.net_device*, i32)*, i64 (%struct.mlxsw_sp.0*, %struct.net_device*, i32)** %18, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %21 = bitcast %struct.mlxsw_sp* %20 to %struct.mlxsw_sp.0*
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV4, align 4
  %24 = call i64 %19(%struct.mlxsw_sp.0* %21, %struct.net_device* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %3
  %27 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %7, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops, %struct.mlxsw_sp_ipip_ops* %27, i32 0, i32 0
  %29 = load i64 (%struct.mlxsw_sp.0*, %struct.net_device*, i32)*, i64 (%struct.mlxsw_sp.0*, %struct.net_device*, i32)** %28, align 8
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %31 = bitcast %struct.mlxsw_sp* %30 to %struct.mlxsw_sp.0*
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV6, align 4
  %34 = call i64 %29(%struct.mlxsw_sp.0* %31, %struct.net_device* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %26, %3
  %37 = phi i1 [ true, %3 ], [ %35, %26 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
