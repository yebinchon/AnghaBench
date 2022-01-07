; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_ruleset_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_ruleset_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_acl* }
%struct.mlxsw_sp_acl = type { i32 }
%struct.mlxsw_sp_acl_ruleset = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_acl_profile_ops* }
%struct.mlxsw_sp_acl_profile_ops = type { i32 (%struct.mlxsw_sp.0*, i32)* }
%struct.mlxsw_sp.0 = type opaque

@mlxsw_sp_acl_ruleset_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*)* @mlxsw_sp_acl_ruleset_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_ruleset_destroy(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_ruleset* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  %6 = alloca %struct.mlxsw_sp_acl*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_acl_ruleset* %1, %struct.mlxsw_sp_acl_ruleset** %4, align 8
  %7 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %9, align 8
  store %struct.mlxsw_sp_acl_profile_ops* %10, %struct.mlxsw_sp_acl_profile_ops** %5, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %12, align 8
  store %struct.mlxsw_sp_acl* %13, %struct.mlxsw_sp_acl** %6, align 8
  %14 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %16, i32 0, i32 2
  %18 = load i32, i32* @mlxsw_sp_acl_ruleset_ht_params, align 4
  %19 = call i32 @rhashtable_remove_fast(i32* %15, i32* %17, i32 %18)
  %20 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %5, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, %struct.mlxsw_sp_acl_profile_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.mlxsw_sp.0*, i32)*, i32 (%struct.mlxsw_sp.0*, i32)** %21, align 8
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %24 = bitcast %struct.mlxsw_sp* %23 to %struct.mlxsw_sp.0*
  %25 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %4, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %22(%struct.mlxsw_sp.0* %24, i32 %27)
  %29 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %4, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %29, i32 0, i32 0
  %31 = call i32 @rhashtable_destroy(i32* %30)
  %32 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %4, align 8
  %33 = call i32 @kfree(%struct.mlxsw_sp_acl_ruleset* %32)
  ret void
}

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_ruleset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
