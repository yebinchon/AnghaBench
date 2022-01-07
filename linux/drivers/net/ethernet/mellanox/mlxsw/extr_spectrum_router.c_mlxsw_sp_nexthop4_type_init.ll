; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_type_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_type_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_ipip_ops** }
%struct.mlxsw_sp_ipip_ops = type { i64 (%struct.mlxsw_sp.0*, %struct.net_device*, i32)* }
%struct.mlxsw_sp.0 = type opaque
%struct.net_device = type { i32 }
%struct.mlxsw_sp_nexthop = type { i32 }
%struct.fib_nh = type { %struct.net_device* }
%struct.mlxsw_sp_ipip_entry = type { i64 }
%struct.mlxsw_sp_rif = type { i32 }

@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@MLXSW_SP_NEXTHOP_TYPE_IPIP = common dso_local global i32 0, align 4
@MLXSW_SP_NEXTHOP_TYPE_ETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*, %struct.fib_nh*)* @mlxsw_sp_nexthop4_type_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop4_type_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop* %1, %struct.fib_nh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %7 = alloca %struct.fib_nh*, align 8
  %8 = alloca %struct.mlxsw_sp_ipip_ops*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %11 = alloca %struct.mlxsw_sp_rif*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_nexthop* %1, %struct.mlxsw_sp_nexthop** %6, align 8
  store %struct.fib_nh* %2, %struct.fib_nh** %7, align 8
  %13 = load %struct.fib_nh*, %struct.fib_nh** %7, align 8
  %14 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %9, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %9, align 8
  %18 = call %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_ol_dev(%struct.mlxsw_sp* %16, %struct.net_device* %17)
  store %struct.mlxsw_sp_ipip_entry* %18, %struct.mlxsw_sp_ipip_entry** %10, align 8
  %19 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %10, align 8
  %20 = icmp ne %struct.mlxsw_sp_ipip_entry* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.mlxsw_sp_ipip_ops**, %struct.mlxsw_sp_ipip_ops*** %25, align 8
  %27 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %10, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %26, i64 %29
  %31 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %30, align 8
  store %struct.mlxsw_sp_ipip_ops* %31, %struct.mlxsw_sp_ipip_ops** %8, align 8
  %32 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %8, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops, %struct.mlxsw_sp_ipip_ops* %32, i32 0, i32 0
  %34 = load i64 (%struct.mlxsw_sp.0*, %struct.net_device*, i32)*, i64 (%struct.mlxsw_sp.0*, %struct.net_device*, i32)** %33, align 8
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %36 = bitcast %struct.mlxsw_sp* %35 to %struct.mlxsw_sp.0*
  %37 = load %struct.net_device*, %struct.net_device** %9, align 8
  %38 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV4, align 4
  %39 = call i64 %34(%struct.mlxsw_sp.0* %36, %struct.net_device* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %21
  %42 = load i32, i32* @MLXSW_SP_NEXTHOP_TYPE_IPIP, align 4
  %43 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %46 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %47 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %10, align 8
  %48 = call i32 @mlxsw_sp_nexthop_ipip_init(%struct.mlxsw_sp* %45, %struct.mlxsw_sp_nexthop* %46, %struct.mlxsw_sp_ipip_entry* %47)
  store i32 0, i32* %4, align 4
  br label %75

49:                                               ; preds = %21
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i32, i32* @MLXSW_SP_NEXTHOP_TYPE_ETH, align 4
  %52 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %55 = load %struct.net_device*, %struct.net_device** %9, align 8
  %56 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %54, %struct.net_device* %55)
  store %struct.mlxsw_sp_rif* %56, %struct.mlxsw_sp_rif** %11, align 8
  %57 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %11, align 8
  %58 = icmp ne %struct.mlxsw_sp_rif* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %75

60:                                               ; preds = %50
  %61 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %62 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %11, align 8
  %63 = call i32 @mlxsw_sp_nexthop_rif_init(%struct.mlxsw_sp_nexthop* %61, %struct.mlxsw_sp_rif* %62)
  %64 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %65 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %66 = call i32 @mlxsw_sp_nexthop_neigh_init(%struct.mlxsw_sp* %64, %struct.mlxsw_sp_nexthop* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %71

70:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %75

71:                                               ; preds = %69
  %72 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %73 = call i32 @mlxsw_sp_nexthop_rif_fini(%struct.mlxsw_sp_nexthop* %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %70, %59, %41
  %76 = load i32, i32* %4, align 4
  ret i32 %76
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
