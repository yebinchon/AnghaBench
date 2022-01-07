; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_acl_tcam.c_mlxsw_sp1_acl_ctcam_region_catchall_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_acl_tcam.c_mlxsw_sp1_acl_ctcam_region_catchall_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp1_acl_tcam_region = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.mlxsw_sp_acl_rule_info* }
%struct.mlxsw_sp_acl_rule_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp1_acl_tcam_region*)* @mlxsw_sp1_acl_ctcam_region_catchall_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_acl_ctcam_region_catchall_del(%struct.mlxsw_sp* %0, %struct.mlxsw_sp1_acl_tcam_region* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp1_acl_tcam_region*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp1_acl_tcam_region* %1, %struct.mlxsw_sp1_acl_tcam_region** %4, align 8
  %6 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %4, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  store %struct.mlxsw_sp_acl_rule_info* %9, %struct.mlxsw_sp_acl_rule_info** %5, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %11 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %11, i32 0, i32 1
  %13 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @mlxsw_sp_acl_ctcam_entry_del(%struct.mlxsw_sp* %10, i32* %12, i32* %15, i32* %18)
  %20 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %5, align 8
  %21 = call i32 @mlxsw_sp_acl_rulei_destroy(%struct.mlxsw_sp_acl_rule_info* %20)
  %22 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %4, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mlxsw_sp_acl_ctcam_chunk_fini(i32* %24)
  ret void
}

declare dso_local i32 @mlxsw_sp_acl_ctcam_entry_del(%struct.mlxsw_sp*, i32*, i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_destroy(%struct.mlxsw_sp_acl_rule_info*) #1

declare dso_local i32 @mlxsw_sp_acl_ctcam_chunk_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
