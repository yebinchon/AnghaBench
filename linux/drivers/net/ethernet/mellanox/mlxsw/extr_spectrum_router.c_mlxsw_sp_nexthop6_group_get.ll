; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop6_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop6_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib6_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_nexthop_group*, i32 }
%struct.mlxsw_sp_nexthop_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib6_entry*)* @mlxsw_sp_nexthop6_group_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop6_group_get(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib6_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_fib6_entry*, align 8
  %6 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_fib6_entry* %1, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %8 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %9 = call %struct.mlxsw_sp_nexthop_group* @mlxsw_sp_nexthop6_group_lookup(%struct.mlxsw_sp* %7, %struct.mlxsw_sp_fib6_entry* %8)
  store %struct.mlxsw_sp_nexthop_group* %9, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %10 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %11 = icmp ne %struct.mlxsw_sp_nexthop_group* %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %14 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %15 = call %struct.mlxsw_sp_nexthop_group* @mlxsw_sp_nexthop6_group_create(%struct.mlxsw_sp* %13, %struct.mlxsw_sp_fib6_entry* %14)
  store %struct.mlxsw_sp_nexthop_group* %15, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %16 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %17 = call i64 @IS_ERR(%struct.mlxsw_sp_nexthop_group* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.mlxsw_sp_nexthop_group* %20)
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  %30 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %31 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.mlxsw_sp_nexthop_group* %30, %struct.mlxsw_sp_nexthop_group** %33, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.mlxsw_sp_nexthop_group* @mlxsw_sp_nexthop6_group_lookup(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib6_entry*) #1

declare dso_local %struct.mlxsw_sp_nexthop_group* @mlxsw_sp_nexthop6_group_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib6_entry*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
