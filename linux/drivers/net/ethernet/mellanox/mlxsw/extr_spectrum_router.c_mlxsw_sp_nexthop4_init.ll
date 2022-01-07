; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp_nexthop_group = type { i32 }
%struct.mlxsw_sp_nexthop = type { i32, i32, i32, %struct.TYPE_3__, %struct.mlxsw_sp_nexthop_group* }
%struct.TYPE_3__ = type { %struct.fib_nh* }
%struct.fib_nh = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.in_device = type { i32 }

@RTNH_F_LINKDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop*, %struct.fib_nh*)* @mlxsw_sp_nexthop4_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop4_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop_group* %1, %struct.mlxsw_sp_nexthop* %2, %struct.fib_nh* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %8 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %9 = alloca %struct.fib_nh*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.in_device*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_nexthop_group* %1, %struct.mlxsw_sp_nexthop_group** %7, align 8
  store %struct.mlxsw_sp_nexthop* %2, %struct.mlxsw_sp_nexthop** %8, align 8
  store %struct.fib_nh* %3, %struct.fib_nh** %9, align 8
  %13 = load %struct.fib_nh*, %struct.fib_nh** %9, align 8
  %14 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %13, i32 0, i32 3
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %10, align 8
  %16 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %17 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %17, i32 0, i32 4
  store %struct.mlxsw_sp_nexthop_group* %16, %struct.mlxsw_sp_nexthop_group** %18, align 8
  %19 = load %struct.fib_nh*, %struct.fib_nh** %9, align 8
  %20 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.fib_nh* %19, %struct.fib_nh** %22, align 8
  %23 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %25, i32 0, i32 2
  %27 = load %struct.fib_nh*, %struct.fib_nh** %9, align 8
  %28 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %27, i32 0, i32 2
  %29 = call i32 @memcpy(i32* %26, i32* %28, i32 4)
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %31 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %32 = call i32 @mlxsw_sp_nexthop_insert(%struct.mlxsw_sp* %30, %struct.mlxsw_sp_nexthop* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %82

37:                                               ; preds = %4
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %39 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %40 = call i32 @mlxsw_sp_nexthop_counter_alloc(%struct.mlxsw_sp* %38, %struct.mlxsw_sp_nexthop* %39)
  %41 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %41, i32 0, i32 1
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail(i32* %42, i32* %46)
  %48 = load %struct.net_device*, %struct.net_device** %10, align 8
  %49 = icmp ne %struct.net_device* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %82

51:                                               ; preds = %37
  %52 = load %struct.net_device*, %struct.net_device** %10, align 8
  %53 = call %struct.in_device* @__in_dev_get_rtnl(%struct.net_device* %52)
  store %struct.in_device* %53, %struct.in_device** %11, align 8
  %54 = load %struct.in_device*, %struct.in_device** %11, align 8
  %55 = icmp ne %struct.in_device* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.in_device*, %struct.in_device** %11, align 8
  %58 = call i64 @IN_DEV_IGNORE_ROUTES_WITH_LINKDOWN(%struct.in_device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.fib_nh*, %struct.fib_nh** %9, align 8
  %62 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %82

68:                                               ; preds = %60, %56, %51
  %69 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %70 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %71 = load %struct.fib_nh*, %struct.fib_nh** %9, align 8
  %72 = call i32 @mlxsw_sp_nexthop4_type_init(%struct.mlxsw_sp* %69, %struct.mlxsw_sp_nexthop* %70, %struct.fib_nh* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %77

76:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %82

77:                                               ; preds = %75
  %78 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %79 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %80 = call i32 @mlxsw_sp_nexthop_remove(%struct.mlxsw_sp* %78, %struct.mlxsw_sp_nexthop* %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %76, %67, %50, %35
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mlxsw_sp_nexthop_insert(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*) #1

declare dso_local i32 @mlxsw_sp_nexthop_counter_alloc(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.in_device* @__in_dev_get_rtnl(%struct.net_device*) #1

declare dso_local i64 @IN_DEV_IGNORE_ROUTES_WITH_LINKDOWN(%struct.in_device*) #1

declare dso_local i32 @mlxsw_sp_nexthop4_type_init(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*, %struct.fib_nh*) #1

declare dso_local i32 @mlxsw_sp_nexthop_remove(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
