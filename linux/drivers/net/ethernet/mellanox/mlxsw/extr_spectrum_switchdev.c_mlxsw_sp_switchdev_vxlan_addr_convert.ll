; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_vxlan_addr_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_vxlan_addr_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.vxlan_addr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%union.mlxsw_sp_l3addr = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.vxlan_addr*, i32*, %union.mlxsw_sp_l3addr*)* @mlxsw_sp_switchdev_vxlan_addr_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_switchdev_vxlan_addr_convert(%union.vxlan_addr* %0, i32* %1, %union.mlxsw_sp_l3addr* %2) #0 {
  %4 = alloca %union.vxlan_addr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.mlxsw_sp_l3addr*, align 8
  store %union.vxlan_addr* %0, %union.vxlan_addr** %4, align 8
  store i32* %1, i32** %5, align 8
  store %union.mlxsw_sp_l3addr* %2, %union.mlxsw_sp_l3addr** %6, align 8
  %7 = load %union.vxlan_addr*, %union.vxlan_addr** %4, align 8
  %8 = bitcast %union.vxlan_addr* %7 to %struct.TYPE_5__*
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_INET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %union.vxlan_addr*, %union.vxlan_addr** %4, align 8
  %15 = bitcast %union.vxlan_addr* %14 to %struct.TYPE_7__*
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr** %6, align 8
  %20 = bitcast %union.mlxsw_sp_l3addr* %19 to i32*
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV4, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %32

23:                                               ; preds = %3
  %24 = load %union.vxlan_addr*, %union.vxlan_addr** %4, align 8
  %25 = bitcast %union.vxlan_addr* %24 to %struct.TYPE_8__*
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr** %6, align 8
  %29 = bitcast %union.mlxsw_sp_l3addr* %28 to i32*
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV6, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %23, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
