; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_entry_offload_unset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_entry_offload_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fib_entry = type { %struct.mlxsw_sp_nexthop_group* }
%struct.mlxsw_sp_nexthop_group = type { i32, %struct.mlxsw_sp_nexthop*, i32 }
%struct.mlxsw_sp_nexthop = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RTNH_F_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_fib_entry*)* @mlxsw_sp_fib4_entry_offload_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fib4_entry_offload_unset(%struct.mlxsw_sp_fib_entry* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %3 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_nexthop*, align 8
  store %struct.mlxsw_sp_fib_entry* %0, %struct.mlxsw_sp_fib_entry** %2, align 8
  %6 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %2, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %6, i32 0, i32 0
  %8 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  store %struct.mlxsw_sp_nexthop_group* %8, %struct.mlxsw_sp_nexthop_group** %3, align 8
  %9 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %9, i32 0, i32 2
  %11 = call i32 @list_is_singular(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %40

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %3, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %22, i32 0, i32 1
  %24 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %24, i64 %26
  store %struct.mlxsw_sp_nexthop* %27, %struct.mlxsw_sp_nexthop** %5, align 8
  %28 = load i32, i32* @RTNH_F_OFFLOAD, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %29
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %21
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %15

40:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32 @list_is_singular(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
