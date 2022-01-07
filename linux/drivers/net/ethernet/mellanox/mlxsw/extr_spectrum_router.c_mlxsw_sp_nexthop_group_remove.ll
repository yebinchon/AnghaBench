; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_nexthop_group = type { i32, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@mlxsw_sp_nexthop_group_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*)* @mlxsw_sp_nexthop_group_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nexthop_group_remove(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop_group* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_nexthop_group* %1, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %5 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %6 = call i64 @mlxsw_sp_nexthop_group_type(%struct.mlxsw_sp_nexthop_group* %5)
  %7 = load i64, i64* @AF_INET6, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %24

15:                                               ; preds = %9, %2
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %20, i32 0, i32 0
  %22 = load i32, i32* @mlxsw_sp_nexthop_group_ht_params, align 4
  %23 = call i32 @rhashtable_remove_fast(i32* %19, i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @mlxsw_sp_nexthop_group_type(%struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
