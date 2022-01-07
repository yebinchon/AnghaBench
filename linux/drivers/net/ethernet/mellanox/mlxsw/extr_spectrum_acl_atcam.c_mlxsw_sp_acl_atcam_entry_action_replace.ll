; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_entry_action_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_entry_action_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { i32 }
%struct.mlxsw_sp_acl_atcam_entry = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_atcam_entry_action_replace(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_entry* %2, %struct.mlxsw_sp_acl_rule_info* %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_atcam_entry*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_region** %6, align 8
  store %struct.mlxsw_sp_acl_atcam_entry* %2, %struct.mlxsw_sp_acl_atcam_entry** %7, align 8
  store %struct.mlxsw_sp_acl_rule_info* %3, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %10 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %7, align 8
  %11 = call i64 @mlxsw_sp_acl_atcam_is_centry(%struct.mlxsw_sp_acl_atcam_entry* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %15 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %15, i32 0, i32 0
  %17 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %7, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %17, i32 0, i32 0
  %19 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %20 = call i32 @mlxsw_sp_acl_ctcam_entry_action_replace(%struct.mlxsw_sp* %14, i32* %16, i32* %18, %struct.mlxsw_sp_acl_rule_info* %19)
  store i32 %20, i32* %9, align 4
  br label %27

21:                                               ; preds = %4
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %23 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %6, align 8
  %24 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %7, align 8
  %25 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %26 = call i32 @__mlxsw_sp_acl_atcam_entry_action_replace(%struct.mlxsw_sp* %22, %struct.mlxsw_sp_acl_atcam_region* %23, %struct.mlxsw_sp_acl_atcam_entry* %24, %struct.mlxsw_sp_acl_rule_info* %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %21, %13
  %28 = load i32, i32* %9, align 4
  ret i32 %28
}

declare dso_local i64 @mlxsw_sp_acl_atcam_is_centry(%struct.mlxsw_sp_acl_atcam_entry*) #1

declare dso_local i32 @mlxsw_sp_acl_ctcam_entry_action_replace(%struct.mlxsw_sp*, i32*, i32*, %struct.mlxsw_sp_acl_rule_info*) #1

declare dso_local i32 @__mlxsw_sp_acl_atcam_entry_action_replace(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_rule_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
