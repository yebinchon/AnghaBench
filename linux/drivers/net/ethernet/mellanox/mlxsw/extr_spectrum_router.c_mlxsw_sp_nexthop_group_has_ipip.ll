; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_has_ipip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_has_ipip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nexthop = type { i64, %struct.mlxsw_sp_nexthop_group* }
%struct.mlxsw_sp_nexthop_group = type { i32, %struct.mlxsw_sp_nexthop* }

@MLXSW_SP_NEXTHOP_TYPE_IPIP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_nexthop_group_has_ipip(%struct.mlxsw_sp_nexthop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %4 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_nexthop*, align 8
  store %struct.mlxsw_sp_nexthop* %0, %struct.mlxsw_sp_nexthop** %3, align 8
  %7 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %7, i32 0, i32 1
  %9 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %8, align 8
  store %struct.mlxsw_sp_nexthop_group* %9, %struct.mlxsw_sp_nexthop_group** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %17, i32 0, i32 1
  %19 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %19, i64 %21
  store %struct.mlxsw_sp_nexthop* %22, %struct.mlxsw_sp_nexthop** %6, align 8
  %23 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MLXSW_SP_NEXTHOP_TYPE_IPIP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %34

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10

33:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
