; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_entry_should_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_entry_should_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fib_entry = type { i32, %struct.TYPE_4__*, %struct.mlxsw_sp_nexthop_group* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sp_nexthop_group = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_fib_entry*)* @mlxsw_sp_fib_entry_should_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fib_entry_should_offload(%struct.mlxsw_sp_fib_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %4 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  store %struct.mlxsw_sp_fib_entry* %0, %struct.mlxsw_sp_fib_entry** %3, align 8
  %5 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %5, i32 0, i32 2
  %7 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  store %struct.mlxsw_sp_nexthop_group* %7, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %8 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %22 [
    i32 129, label %15
    i32 128, label %21
  ]

15:                                               ; preds = %1
  %16 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %3, align 8
  %17 = call i32 @mlxsw_sp_fib4_entry_should_offload(%struct.mlxsw_sp_fib_entry* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %44

20:                                               ; preds = %15
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %1, %21, %20
  %23 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %3, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %43 [
    i32 130, label %26
    i32 132, label %34
    i32 134, label %42
    i32 133, label %42
    i32 131, label %42
  ]

26:                                               ; preds = %22
  %27 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %22
  %35 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %22, %22, %22
  store i32 1, i32* %2, align 4
  br label %44

43:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %34, %26, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @mlxsw_sp_fib4_entry_should_offload(%struct.mlxsw_sp_fib_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
