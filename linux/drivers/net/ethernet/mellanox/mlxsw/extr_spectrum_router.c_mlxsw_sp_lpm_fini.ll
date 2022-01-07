; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.mlxsw_sp_lpm_tree** }
%struct.mlxsw_sp_lpm_tree = type { i32 }

@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i64 0, align 8
@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*)* @mlxsw_sp_lpm_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_lpm_fini(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  %4 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.mlxsw_sp_lpm_tree**, %struct.mlxsw_sp_lpm_tree*** %8, align 8
  %10 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %9, i64 %10
  %12 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %11, align 8
  store %struct.mlxsw_sp_lpm_tree* %12, %struct.mlxsw_sp_lpm_tree** %3, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %14 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %3, align 8
  %15 = call i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp* %13, %struct.mlxsw_sp_lpm_tree* %14)
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.mlxsw_sp_lpm_tree**, %struct.mlxsw_sp_lpm_tree*** %20, align 8
  %22 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %21, i64 %22
  %24 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %23, align 8
  store %struct.mlxsw_sp_lpm_tree* %24, %struct.mlxsw_sp_lpm_tree** %3, align 8
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %26 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %3, align 8
  %27 = call i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp* %25, %struct.mlxsw_sp_lpm_tree* %26)
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @kfree(i32 %33)
  ret void
}

declare dso_local i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
