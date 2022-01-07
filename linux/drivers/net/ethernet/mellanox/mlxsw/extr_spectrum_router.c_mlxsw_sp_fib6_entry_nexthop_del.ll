; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib6_entry_nexthop_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib6_entry_nexthop_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib6_entry = type { i32 }
%struct.fib6_info = type { i32 }
%struct.mlxsw_sp_rt6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib6_entry*, %struct.fib6_info**, i32)* @mlxsw_sp_fib6_entry_nexthop_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fib6_entry_nexthop_del(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib6_entry* %1, %struct.fib6_info** %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_fib6_entry*, align 8
  %7 = alloca %struct.fib6_info**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_rt6*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_fib6_entry* %1, %struct.mlxsw_sp_fib6_entry** %6, align 8
  store %struct.fib6_info** %2, %struct.fib6_info*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %40, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %6, align 8
  %17 = load %struct.fib6_info**, %struct.fib6_info*** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.fib6_info*, %struct.fib6_info** %17, i64 %19
  %21 = load %struct.fib6_info*, %struct.fib6_info** %20, align 8
  %22 = call %struct.mlxsw_sp_rt6* @mlxsw_sp_fib6_entry_rt_find(%struct.mlxsw_sp_fib6_entry* %16, %struct.fib6_info* %21)
  store %struct.mlxsw_sp_rt6* %22, %struct.mlxsw_sp_rt6** %9, align 8
  %23 = load %struct.mlxsw_sp_rt6*, %struct.mlxsw_sp_rt6** %9, align 8
  %24 = icmp ne %struct.mlxsw_sp_rt6* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %40

30:                                               ; preds = %15
  %31 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %6, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_fib6_entry, %struct.mlxsw_sp_fib6_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.mlxsw_sp_rt6*, %struct.mlxsw_sp_rt6** %9, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_rt6, %struct.mlxsw_sp_rt6* %35, i32 0, i32 0
  %37 = call i32 @list_del(i32* %36)
  %38 = load %struct.mlxsw_sp_rt6*, %struct.mlxsw_sp_rt6** %9, align 8
  %39 = call i32 @mlxsw_sp_rt6_destroy(%struct.mlxsw_sp_rt6* %38)
  br label %40

40:                                               ; preds = %30, %29
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %11

43:                                               ; preds = %11
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %45 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %6, align 8
  %46 = call i32 @mlxsw_sp_nexthop6_group_update(%struct.mlxsw_sp* %44, %struct.mlxsw_sp_fib6_entry* %45)
  ret void
}

declare dso_local %struct.mlxsw_sp_rt6* @mlxsw_sp_fib6_entry_rt_find(%struct.mlxsw_sp_fib6_entry*, %struct.fib6_info*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mlxsw_sp_rt6_destroy(%struct.mlxsw_sp_rt6*) #1

declare dso_local i32 @mlxsw_sp_nexthop6_group_update(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib6_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
