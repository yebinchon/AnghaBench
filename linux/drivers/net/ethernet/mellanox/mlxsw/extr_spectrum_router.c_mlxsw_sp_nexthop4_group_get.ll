; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib_entry = type { %struct.mlxsw_sp_nexthop_group*, i32 }
%struct.mlxsw_sp_nexthop_group = type { i32 }
%struct.fib_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, %struct.fib_info*)* @mlxsw_sp_nexthop4_group_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop4_group_get(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib_entry* %1, %struct.fib_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %7 = alloca %struct.fib_info*, align 8
  %8 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_fib_entry* %1, %struct.mlxsw_sp_fib_entry** %6, align 8
  store %struct.fib_info* %2, %struct.fib_info** %7, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %10 = load %struct.fib_info*, %struct.fib_info** %7, align 8
  %11 = call %struct.mlxsw_sp_nexthop_group* @mlxsw_sp_nexthop4_group_lookup(%struct.mlxsw_sp* %9, %struct.fib_info* %10)
  store %struct.mlxsw_sp_nexthop_group* %11, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %12 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %13 = icmp ne %struct.mlxsw_sp_nexthop_group* %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %16 = load %struct.fib_info*, %struct.fib_info** %7, align 8
  %17 = call %struct.mlxsw_sp_nexthop_group* @mlxsw_sp_nexthop4_group_create(%struct.mlxsw_sp* %15, %struct.fib_info* %16)
  store %struct.mlxsw_sp_nexthop_group* %17, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %18 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %19 = call i64 @IS_ERR(%struct.mlxsw_sp_nexthop_group* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %23 = call i32 @PTR_ERR(%struct.mlxsw_sp_nexthop_group* %22)
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %26, i32 0, i32 1
  %28 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %28, i32 0, i32 0
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %32 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %32, i32 0, i32 0
  store %struct.mlxsw_sp_nexthop_group* %31, %struct.mlxsw_sp_nexthop_group** %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %25, %21
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.mlxsw_sp_nexthop_group* @mlxsw_sp_nexthop4_group_lookup(%struct.mlxsw_sp*, %struct.fib_info*) #1

declare dso_local %struct.mlxsw_sp_nexthop_group* @mlxsw_sp_nexthop4_group_create(%struct.mlxsw_sp*, %struct.fib_info*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
