; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop6_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop6_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sp_nexthop_group = type { i32 }
%struct.mlxsw_sp_nexthop = type { i32, i32, i32, i32, %struct.mlxsw_sp_nexthop_group* }
%struct.fib6_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop*, %struct.fib6_info*)* @mlxsw_sp_nexthop6_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop6_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop_group* %1, %struct.mlxsw_sp_nexthop* %2, %struct.fib6_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %8 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %9 = alloca %struct.fib6_info*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_nexthop_group* %1, %struct.mlxsw_sp_nexthop_group** %7, align 8
  store %struct.mlxsw_sp_nexthop* %2, %struct.mlxsw_sp_nexthop** %8, align 8
  store %struct.fib6_info* %3, %struct.fib6_info** %9, align 8
  %11 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %12 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %10, align 8
  %16 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %17 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %17, i32 0, i32 4
  store %struct.mlxsw_sp_nexthop_group* %16, %struct.mlxsw_sp_nexthop_group** %18, align 8
  %19 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %20 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %26, i32 0, i32 2
  %28 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %29 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @memcpy(i32* %27, i32* %31, i32 4)
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %34 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %35 = call i32 @mlxsw_sp_nexthop_counter_alloc(%struct.mlxsw_sp* %33, %struct.mlxsw_sp_nexthop* %34)
  %36 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %36, i32 0, i32 1
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @list_add_tail(i32* %37, i32* %41)
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

46:                                               ; preds = %4
  %47 = load %struct.net_device*, %struct.net_device** %10, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %53 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %54 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %55 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %56 = call i32 @mlxsw_sp_nexthop6_type_init(%struct.mlxsw_sp* %52, %struct.mlxsw_sp_nexthop_group* %53, %struct.mlxsw_sp_nexthop* %54, %struct.fib6_info* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %46, %45
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mlxsw_sp_nexthop_counter_alloc(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_nexthop6_type_init(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop*, %struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
