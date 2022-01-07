; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_nexthop_ipip_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_nexthop_ipip_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_ipip_ops** }
%struct.mlxsw_sp_ipip_ops = type { i32 (%struct.mlxsw_sp.0*, i32, %struct.TYPE_4__*)* }
%struct.mlxsw_sp.0 = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.mlxsw_sp_nexthop = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_nexthop*)* @__mlxsw_sp_nexthop_ipip_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp_nexthop_ipip_update(%struct.mlxsw_sp* %0, i32 %1, %struct.mlxsw_sp_nexthop* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %7 = alloca %struct.mlxsw_sp_ipip_ops*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlxsw_sp_nexthop* %2, %struct.mlxsw_sp_nexthop** %6, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_ipip_ops**, %struct.mlxsw_sp_ipip_ops*** %11, align 8
  %13 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %12, i64 %17
  %19 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %18, align 8
  store %struct.mlxsw_sp_ipip_ops* %19, %struct.mlxsw_sp_ipip_ops** %7, align 8
  %20 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %7, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops, %struct.mlxsw_sp_ipip_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.mlxsw_sp.0*, i32, %struct.TYPE_4__*)*, i32 (%struct.mlxsw_sp.0*, i32, %struct.TYPE_4__*)** %21, align 8
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %24 = bitcast %struct.mlxsw_sp* %23 to %struct.mlxsw_sp.0*
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 %22(%struct.mlxsw_sp.0* %24, i32 %25, %struct.TYPE_4__* %28)
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
