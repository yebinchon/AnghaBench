; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop6_type_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop6_type_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlxsw_sp_ipip_ops** }
%struct.mlxsw_sp_ipip_ops = type { i64 (%struct.mlxsw_sp.0*, %struct.net_device*, i32)* }
%struct.mlxsw_sp.0 = type opaque
%struct.net_device = type { i32 }
%struct.mlxsw_sp_nexthop_group = type { i32 }
%struct.mlxsw_sp_nexthop = type { i32 }
%struct.fib6_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.mlxsw_sp_ipip_entry = type { i64 }
%struct.mlxsw_sp_rif = type { i32 }

@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i32 0, align 4
@MLXSW_SP_NEXTHOP_TYPE_IPIP = common dso_local global i32 0, align 4
@MLXSW_SP_NEXTHOP_TYPE_ETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop*, %struct.fib6_info*)* @mlxsw_sp_nexthop6_type_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop6_type_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop_group* %1, %struct.mlxsw_sp_nexthop* %2, %struct.fib6_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %8 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %9 = alloca %struct.fib6_info*, align 8
  %10 = alloca %struct.mlxsw_sp_ipip_ops*, align 8
  %11 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.mlxsw_sp_rif*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_nexthop_group* %1, %struct.mlxsw_sp_nexthop_group** %7, align 8
  store %struct.mlxsw_sp_nexthop* %2, %struct.mlxsw_sp_nexthop** %8, align 8
  store %struct.fib6_info* %3, %struct.fib6_info** %9, align 8
  %15 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %16 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %12, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %21 = load %struct.net_device*, %struct.net_device** %12, align 8
  %22 = call %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_ol_dev(%struct.mlxsw_sp* %20, %struct.net_device* %21)
  store %struct.mlxsw_sp_ipip_entry* %22, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %23 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %24 = icmp ne %struct.mlxsw_sp_ipip_entry* %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %4
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.mlxsw_sp_ipip_ops**, %struct.mlxsw_sp_ipip_ops*** %29, align 8
  %31 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %30, i64 %33
  %35 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %34, align 8
  store %struct.mlxsw_sp_ipip_ops* %35, %struct.mlxsw_sp_ipip_ops** %10, align 8
  %36 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %10, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops, %struct.mlxsw_sp_ipip_ops* %36, i32 0, i32 0
  %38 = load i64 (%struct.mlxsw_sp.0*, %struct.net_device*, i32)*, i64 (%struct.mlxsw_sp.0*, %struct.net_device*, i32)** %37, align 8
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %40 = bitcast %struct.mlxsw_sp* %39 to %struct.mlxsw_sp.0*
  %41 = load %struct.net_device*, %struct.net_device** %12, align 8
  %42 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV6, align 4
  %43 = call i64 %38(%struct.mlxsw_sp.0* %40, %struct.net_device* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %25
  %46 = load i32, i32* @MLXSW_SP_NEXTHOP_TYPE_IPIP, align 4
  %47 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %50 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %51 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %52 = call i32 @mlxsw_sp_nexthop_ipip_init(%struct.mlxsw_sp* %49, %struct.mlxsw_sp_nexthop* %50, %struct.mlxsw_sp_ipip_entry* %51)
  store i32 0, i32* %5, align 4
  br label %79

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i32, i32* @MLXSW_SP_NEXTHOP_TYPE_ETH, align 4
  %56 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %59 = load %struct.net_device*, %struct.net_device** %12, align 8
  %60 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %58, %struct.net_device* %59)
  store %struct.mlxsw_sp_rif* %60, %struct.mlxsw_sp_rif** %13, align 8
  %61 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %13, align 8
  %62 = icmp ne %struct.mlxsw_sp_rif* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %79

64:                                               ; preds = %54
  %65 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %66 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %13, align 8
  %67 = call i32 @mlxsw_sp_nexthop_rif_init(%struct.mlxsw_sp_nexthop* %65, %struct.mlxsw_sp_rif* %66)
  %68 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %69 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %70 = call i32 @mlxsw_sp_nexthop_neigh_init(%struct.mlxsw_sp* %68, %struct.mlxsw_sp_nexthop* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %75

74:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %79

75:                                               ; preds = %73
  %76 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %77 = call i32 @mlxsw_sp_nexthop_rif_fini(%struct.mlxsw_sp_nexthop* %76)
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %74, %63, %45
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_ol_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_nexthop_ipip_init(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_ipip_entry*) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_nexthop_rif_init(%struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_nexthop_neigh_init(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*) #1

declare dso_local i32 @mlxsw_sp_nexthop_rif_fini(%struct.mlxsw_sp_nexthop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
