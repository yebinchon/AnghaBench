; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_neigh_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_neigh_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_nexthop = type { %struct.mlxsw_sp_neigh_entry*, i32 }
%struct.mlxsw_sp_neigh_entry = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.neighbour* }
%struct.neighbour = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*)* @mlxsw_sp_nexthop_neigh_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nexthop_neigh_fini(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %5 = alloca %struct.mlxsw_sp_neigh_entry*, align 8
  %6 = alloca %struct.neighbour*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_nexthop* %1, %struct.mlxsw_sp_nexthop** %4, align 8
  %7 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %7, i32 0, i32 0
  %9 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %8, align 8
  store %struct.mlxsw_sp_neigh_entry* %9, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %10 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %11 = icmp ne %struct.mlxsw_sp_neigh_entry* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.neighbour*, %struct.neighbour** %16, align 8
  store %struct.neighbour* %17, %struct.neighbour** %6, align 8
  %18 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %4, align 8
  %19 = call i32 @__mlxsw_sp_nexthop_neigh_update(%struct.mlxsw_sp_nexthop* %18, i32 1)
  %20 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %20, i32 0, i32 1
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %23, i32 0, i32 0
  store %struct.mlxsw_sp_neigh_entry* null, %struct.mlxsw_sp_neigh_entry** %24, align 8
  %25 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %25, i32 0, i32 0
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %13
  %30 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %30, i32 0, i32 2
  %32 = call i32 @list_del(i32* %31)
  br label %33

33:                                               ; preds = %29, %13
  %34 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %39, i32 0, i32 0
  %41 = call i64 @list_empty(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %45 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %46 = call i32 @mlxsw_sp_neigh_entry_destroy(%struct.mlxsw_sp* %44, %struct.mlxsw_sp_neigh_entry* %45)
  br label %47

47:                                               ; preds = %43, %38, %33
  %48 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %49 = call i32 @neigh_release(%struct.neighbour* %48)
  br label %50

50:                                               ; preds = %47, %12
  ret void
}

declare dso_local i32 @__mlxsw_sp_nexthop_neigh_update(%struct.mlxsw_sp_nexthop*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mlxsw_sp_neigh_entry_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_neigh_entry*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
