; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_ipip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_ipip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_nexthop = type { %struct.mlxsw_sp_ipip_entry*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_ipip_entry*)* @mlxsw_sp_nexthop_ipip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nexthop_ipip_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop* %1, %struct.mlxsw_sp_ipip_entry* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %6 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_nexthop* %1, %struct.mlxsw_sp_nexthop** %5, align 8
  store %struct.mlxsw_sp_ipip_entry* %2, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %8 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %15, i32 0, i32 0
  %17 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %16, align 8
  %18 = icmp ne %struct.mlxsw_sp_ipip_entry* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %3
  br label %40

20:                                               ; preds = %14
  %21 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %22 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %22, i32 0, i32 0
  store %struct.mlxsw_sp_ipip_entry* %21, %struct.mlxsw_sp_ipip_entry** %23, align 8
  %24 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mlxsw_sp_ipip_netdev_ul_up(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @__mlxsw_sp_nexthop_neigh_update(%struct.mlxsw_sp_nexthop* %31, i32 %32)
  %34 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %35 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @mlxsw_sp_nexthop_rif_init(%struct.mlxsw_sp_nexthop* %34, i32* %38)
  br label %40

40:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @mlxsw_sp_ipip_netdev_ul_up(i32) #1

declare dso_local i32 @__mlxsw_sp_nexthop_neigh_update(%struct.mlxsw_sp_nexthop*, i32) #1

declare dso_local i32 @mlxsw_sp_nexthop_rif_init(%struct.mlxsw_sp_nexthop*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
