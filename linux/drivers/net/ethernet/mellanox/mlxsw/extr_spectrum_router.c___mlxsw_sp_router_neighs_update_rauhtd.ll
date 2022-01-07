; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_router_neighs_update_rauhtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_router_neighs_update_rauhtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@rauhtd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to dump neighbour table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, i32)* @__mlxsw_sp_router_neighs_update_rauhtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp_router_neighs_update_rauhtd(%struct.mlxsw_sp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 (...) @rtnl_lock()
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @mlxsw_reg_rauhtd_pack(i8* %12, i32 %13)
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @rauhtd, align 4
  %19 = call i32 @MLXSW_REG(i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @mlxsw_reg_query(i32 %17, i32 %19, i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %11
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err_ratelimited(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %51

31:                                               ; preds = %11
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @mlxsw_reg_rauhtd_num_rec_get(i8* %32)
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %43, %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mlxsw_sp_router_neigh_rec_process(%struct.mlxsw_sp* %39, i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %34

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @mlxsw_sp_router_rauhtd_is_full(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %11, label %51

51:                                               ; preds = %47, %24
  %52 = call i32 (...) @rtnl_unlock()
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @mlxsw_reg_rauhtd_pack(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @mlxsw_reg_rauhtd_num_rec_get(i8*) #1

declare dso_local i32 @mlxsw_sp_router_neigh_rec_process(%struct.mlxsw_sp*, i8*, i32) #1

declare dso_local i64 @mlxsw_sp_router_rauhtd_is_full(i8*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
