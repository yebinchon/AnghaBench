; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib6_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib6_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.fib6_info = type { i32 }
%struct.mlxsw_sp_fib6_entry = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_fib_node* }
%struct.mlxsw_sp_fib_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.fib6_info**, i32)* @mlxsw_sp_router_fib6_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_router_fib6_del(%struct.mlxsw_sp* %0, %struct.fib6_info** %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.fib6_info**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_fib6_entry*, align 8
  %8 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %9 = alloca %struct.fib6_info*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.fib6_info** %1, %struct.fib6_info*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fib6_info**, %struct.fib6_info*** %5, align 8
  %11 = getelementptr inbounds %struct.fib6_info*, %struct.fib6_info** %10, i64 0
  %12 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  store %struct.fib6_info* %12, %struct.fib6_info** %9, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %62

20:                                               ; preds = %3
  %21 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %22 = call i64 @mlxsw_sp_fib6_rt_should_ignore(%struct.fib6_info* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %62

25:                                               ; preds = %20
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %27 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %28 = call %struct.mlxsw_sp_fib6_entry* @mlxsw_sp_fib6_entry_lookup(%struct.mlxsw_sp* %26, %struct.fib6_info* %27)
  store %struct.mlxsw_sp_fib6_entry* %28, %struct.mlxsw_sp_fib6_entry** %7, align 8
  %29 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %7, align 8
  %30 = icmp ne %struct.mlxsw_sp_fib6_entry* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %62

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %7, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %44 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %7, align 8
  %45 = load %struct.fib6_info**, %struct.fib6_info*** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mlxsw_sp_fib6_entry_nexthop_del(%struct.mlxsw_sp* %43, %struct.mlxsw_sp_fib6_entry* %44, %struct.fib6_info** %45, i32 %46)
  br label %62

48:                                               ; preds = %36
  %49 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %7, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %51, align 8
  store %struct.mlxsw_sp_fib_node* %52, %struct.mlxsw_sp_fib_node** %8, align 8
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %54 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %7, align 8
  %55 = call i32 @mlxsw_sp_fib6_node_entry_unlink(%struct.mlxsw_sp* %53, %struct.mlxsw_sp_fib6_entry* %54)
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %57 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %7, align 8
  %58 = call i32 @mlxsw_sp_fib6_entry_destroy(%struct.mlxsw_sp* %56, %struct.mlxsw_sp_fib6_entry* %57)
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %60 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %8, align 8
  %61 = call i32 @mlxsw_sp_fib_node_put(%struct.mlxsw_sp* %59, %struct.mlxsw_sp_fib_node* %60)
  br label %62

62:                                               ; preds = %48, %42, %35, %24, %19
  ret void
}

declare dso_local i64 @mlxsw_sp_fib6_rt_should_ignore(%struct.fib6_info*) #1

declare dso_local %struct.mlxsw_sp_fib6_entry* @mlxsw_sp_fib6_entry_lookup(%struct.mlxsw_sp*, %struct.fib6_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_fib6_entry_nexthop_del(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib6_entry*, %struct.fib6_info**, i32) #1

declare dso_local i32 @mlxsw_sp_fib6_node_entry_unlink(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib6_entry*) #1

declare dso_local i32 @mlxsw_sp_fib6_entry_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib6_entry*) #1

declare dso_local i32 @mlxsw_sp_fib_node_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
