; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_cnt.c_mlxsw_sp_counter_sub_pools_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_cnt.c_mlxsw_sp_counter_sub_pools_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_counter_sub_pool = type { i8* }
%struct.mlxsw_sp = type { i32 }

@mlxsw_sp_counter_sub_pools = common dso_local global %struct.mlxsw_sp_counter_sub_pool* null, align 8
@MLXSW_SP_COUNTER_SUB_POOL_FLOW = common dso_local global i64 0, align 8
@COUNTER_SIZE_PACKETS_BYTES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MLXSW_SP_COUNTER_SUB_POOL_RIF = common dso_local global i64 0, align 8
@COUNTER_SIZE_ROUTER_BASIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_counter_sub_pools_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_counter_sub_pools_prepare(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_counter_sub_pool*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %5 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** @mlxsw_sp_counter_sub_pools, align 8
  %6 = load i64, i64* @MLXSW_SP_COUNTER_SUB_POOL_FLOW, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %5, i64 %6
  store %struct.mlxsw_sp_counter_sub_pool* %7, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @COUNTER_SIZE_PACKETS_BYTES, align 4
  %12 = call i32 @MLXSW_CORE_RES_VALID(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @COUNTER_SIZE_PACKETS_BYTES, align 4
  %22 = call i8* @MLXSW_CORE_RES_GET(i32 %20, i32 %21)
  %23 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** @mlxsw_sp_counter_sub_pools, align 8
  %26 = load i64, i64* @MLXSW_SP_COUNTER_SUB_POOL_RIF, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %25, i64 %26
  store %struct.mlxsw_sp_counter_sub_pool* %27, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @COUNTER_SIZE_ROUTER_BASIC, align 4
  %32 = call i32 @MLXSW_CORE_RES_VALID(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %17
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %45

37:                                               ; preds = %17
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @COUNTER_SIZE_ROUTER_BASIC, align 4
  %42 = call i8* @MLXSW_CORE_RES_GET(i32 %40, i32 %41)
  %43 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %37, %34, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #1

declare dso_local i8* @MLXSW_CORE_RES_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
