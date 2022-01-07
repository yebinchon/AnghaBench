; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_proto_ruleset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_proto_ruleset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_ruleset = type { i32 }
%struct.mlxsw_sp2_mr_tcam = type { %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_ruleset* (%struct.mlxsw_sp2_mr_tcam*, i32)* @mlxsw_sp2_mr_tcam_proto_ruleset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp2_mr_tcam_proto_ruleset(%struct.mlxsw_sp2_mr_tcam* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %4 = alloca %struct.mlxsw_sp2_mr_tcam*, align 8
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp2_mr_tcam* %0, %struct.mlxsw_sp2_mr_tcam** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %15 [
    i32 129, label %7
    i32 128, label %11
  ]

7:                                                ; preds = %2
  %8 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %8, i32 0, i32 1
  %10 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %9, align 8
  store %struct.mlxsw_sp_acl_ruleset* %10, %struct.mlxsw_sp_acl_ruleset** %3, align 8
  br label %16

11:                                               ; preds = %2
  %12 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  store %struct.mlxsw_sp_acl_ruleset* %14, %struct.mlxsw_sp_acl_ruleset** %3, align 8
  br label %16

15:                                               ; preds = %2
  store %struct.mlxsw_sp_acl_ruleset* null, %struct.mlxsw_sp_acl_ruleset** %3, align 8
  br label %16

16:                                               ; preds = %15, %11, %7
  %17 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %3, align 8
  ret %struct.mlxsw_sp_acl_ruleset* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
