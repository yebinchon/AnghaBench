; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop6_group_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop6_group_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib6_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_nexthop_group*, i32 }
%struct.mlxsw_sp_nexthop_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib6_entry*)* @mlxsw_sp_nexthop6_group_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop6_group_update(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib6_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_fib6_entry*, align 8
  %6 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_fib6_entry* %1, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %8 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %10, align 8
  store %struct.mlxsw_sp_nexthop_group* %11, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %12 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.mlxsw_sp_nexthop_group* null, %struct.mlxsw_sp_nexthop_group** %14, align 8
  %15 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %20 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %21 = call i32 @mlxsw_sp_nexthop6_group_get(%struct.mlxsw_sp* %19, %struct.mlxsw_sp_fib6_entry* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %27 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %27, i32 0, i32 0
  %29 = call i32 @mlxsw_sp_fib_node_entry_add(%struct.mlxsw_sp* %26, %struct.TYPE_3__* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %43

33:                                               ; preds = %25
  %34 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %34, i32 0, i32 0
  %36 = call i64 @list_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %40 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %41 = call i32 @mlxsw_sp_nexthop6_group_destroy(%struct.mlxsw_sp* %39, %struct.mlxsw_sp_nexthop_group* %40)
  br label %42

42:                                               ; preds = %38, %33
  store i32 0, i32* %3, align 4
  br label %60

43:                                               ; preds = %32
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %45 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %45, i32 0, i32 0
  %47 = call i32 @mlxsw_sp_nexthop6_group_put(%struct.mlxsw_sp* %44, %struct.TYPE_3__* %46)
  br label %48

48:                                               ; preds = %43, %24
  %49 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %52, i32 0, i32 0
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %56 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %5, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store %struct.mlxsw_sp_nexthop_group* %55, %struct.mlxsw_sp_nexthop_group** %58, align 8
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %48, %42
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mlxsw_sp_nexthop6_group_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib6_entry*) #1

declare dso_local i32 @mlxsw_sp_fib_node_entry_add(%struct.mlxsw_sp*, %struct.TYPE_3__*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mlxsw_sp_nexthop6_group_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @mlxsw_sp_nexthop6_group_put(%struct.mlxsw_sp*, %struct.TYPE_3__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
