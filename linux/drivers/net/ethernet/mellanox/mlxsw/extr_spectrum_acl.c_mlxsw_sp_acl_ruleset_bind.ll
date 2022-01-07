; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_ruleset_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_ruleset_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_block = type { %struct.mlxsw_sp_acl_ruleset* }
%struct.mlxsw_sp_acl_ruleset = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_acl_profile_ops* }
%struct.mlxsw_sp_acl_profile_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32, i32)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp_acl_block_binding = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block_binding*)* @mlxsw_sp_acl_ruleset_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_ruleset_bind(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block_binding* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_block_binding*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %5, align 8
  store %struct.mlxsw_sp_acl_block_binding* %2, %struct.mlxsw_sp_acl_block_binding** %6, align 8
  %9 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %9, i32 0, i32 0
  %11 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %10, align 8
  store %struct.mlxsw_sp_acl_ruleset* %11, %struct.mlxsw_sp_acl_ruleset** %7, align 8
  %12 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %7, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %14, align 8
  store %struct.mlxsw_sp_acl_profile_ops* %15, %struct.mlxsw_sp_acl_profile_ops** %8, align 8
  %16 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %8, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, %struct.mlxsw_sp_acl_profile_ops* %16, i32 0, i32 0
  %18 = load i32 (%struct.mlxsw_sp.0*, i32, i32, i32)*, i32 (%struct.mlxsw_sp.0*, i32, i32, i32)** %17, align 8
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %20 = bitcast %struct.mlxsw_sp* %19 to %struct.mlxsw_sp.0*
  %21 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %7, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_acl_block_binding, %struct.mlxsw_sp_acl_block_binding* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %6, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_block_binding, %struct.mlxsw_sp_acl_block_binding* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %18(%struct.mlxsw_sp.0* %20, i32 %23, i32 %26, i32 %29)
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
