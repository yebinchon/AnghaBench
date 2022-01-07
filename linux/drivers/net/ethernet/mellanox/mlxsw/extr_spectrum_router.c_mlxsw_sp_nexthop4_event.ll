; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.fib_nh = type { i32 }
%struct.mlxsw_sp_nexthop_key = type { %struct.fib_nh* }
%struct.mlxsw_sp_nexthop = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i64, %struct.fib_nh*)* @mlxsw_sp_nexthop4_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nexthop4_event(%struct.mlxsw_sp* %0, i64 %1, %struct.fib_nh* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fib_nh*, align 8
  %7 = alloca %struct.mlxsw_sp_nexthop_key, align 8
  %8 = alloca %struct.mlxsw_sp_nexthop*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.fib_nh* %2, %struct.fib_nh** %6, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %47

16:                                               ; preds = %3
  %17 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_nexthop_key, %struct.mlxsw_sp_nexthop_key* %7, i32 0, i32 0
  store %struct.fib_nh* %17, %struct.fib_nh** %18, align 8
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_nexthop_key, %struct.mlxsw_sp_nexthop_key* %7, i32 0, i32 0
  %21 = load %struct.fib_nh*, %struct.fib_nh** %20, align 8
  %22 = call %struct.mlxsw_sp_nexthop* @mlxsw_sp_nexthop_lookup(%struct.mlxsw_sp* %19, %struct.fib_nh* %21)
  store %struct.mlxsw_sp_nexthop* %22, %struct.mlxsw_sp_nexthop** %8, align 8
  %23 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %24 = icmp ne %struct.mlxsw_sp_nexthop* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %47

30:                                               ; preds = %16
  %31 = load i64, i64* %5, align 8
  switch i64 %31, label %41 [
    i64 129, label %32
    i64 128, label %37
  ]

32:                                               ; preds = %30
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %34 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %35 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %36 = call i32 @mlxsw_sp_nexthop4_type_init(%struct.mlxsw_sp* %33, %struct.mlxsw_sp_nexthop* %34, %struct.fib_nh* %35)
  br label %41

37:                                               ; preds = %30
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %39 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %40 = call i32 @mlxsw_sp_nexthop4_type_fini(%struct.mlxsw_sp* %38, %struct.mlxsw_sp_nexthop* %39)
  br label %41

41:                                               ; preds = %30, %37, %32
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %43 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mlxsw_sp_nexthop_group_refresh(%struct.mlxsw_sp* %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %29, %15
  ret void
}

declare dso_local %struct.mlxsw_sp_nexthop* @mlxsw_sp_nexthop_lookup(%struct.mlxsw_sp*, %struct.fib_nh*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mlxsw_sp_nexthop4_type_init(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*, %struct.fib_nh*) #1

declare dso_local i32 @mlxsw_sp_nexthop4_type_fini(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*) #1

declare dso_local i32 @mlxsw_sp_nexthop_group_refresh(%struct.mlxsw_sp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
