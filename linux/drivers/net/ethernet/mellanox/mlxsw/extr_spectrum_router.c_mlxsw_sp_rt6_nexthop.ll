; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rt6_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rt6_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nexthop = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mlxsw_sp_nexthop_group = type { i32, %struct.mlxsw_sp_nexthop* }
%struct.mlxsw_sp_rt6 = type { %struct.fib6_info* }
%struct.fib6_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_nexthop* (%struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_rt6*)* @mlxsw_sp_rt6_nexthop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_nexthop* @mlxsw_sp_rt6_nexthop(%struct.mlxsw_sp_nexthop_group* %0, %struct.mlxsw_sp_rt6* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %4 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %5 = alloca %struct.mlxsw_sp_rt6*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %8 = alloca %struct.fib6_info*, align 8
  store %struct.mlxsw_sp_nexthop_group* %0, %struct.mlxsw_sp_nexthop_group** %4, align 8
  store %struct.mlxsw_sp_rt6* %1, %struct.mlxsw_sp_rt6** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %54, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %9
  %16 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %16, i32 0, i32 1
  %18 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %18, i64 %20
  store %struct.mlxsw_sp_nexthop* %21, %struct.mlxsw_sp_nexthop** %7, align 8
  %22 = load %struct.mlxsw_sp_rt6*, %struct.mlxsw_sp_rt6** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_rt6, %struct.mlxsw_sp_rt6* %22, i32 0, i32 0
  %24 = load %struct.fib6_info*, %struct.fib6_info** %23, align 8
  store %struct.fib6_info* %24, %struct.fib6_info** %8, align 8
  %25 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %7, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %53

29:                                               ; preds = %15
  %30 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %7, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %36 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %7, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %42, i32 0, i32 0
  %44 = bitcast i32* %43 to %struct.in6_addr*
  %45 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %46 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = call i64 @ipv6_addr_equal(%struct.in6_addr* %44, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %7, align 8
  store %struct.mlxsw_sp_nexthop* %52, %struct.mlxsw_sp_nexthop** %3, align 8
  br label %58

53:                                               ; preds = %41, %29, %15
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %9

57:                                               ; preds = %9
  store %struct.mlxsw_sp_nexthop* null, %struct.mlxsw_sp_nexthop** %3, align 8
  br label %58

58:                                               ; preds = %57, %51
  %59 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %3, align 8
  ret %struct.mlxsw_sp_nexthop* %59
}

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
