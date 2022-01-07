; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_entry_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { i32 }
%struct.mlxsw_sp_acl_atcam_chunk = type { i32 }
%struct.mlxsw_sp_acl_atcam_entry = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_atcam_entry_add(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_chunk* %2, %struct.mlxsw_sp_acl_atcam_entry* %3, %struct.mlxsw_sp_acl_rule_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_atcam_chunk*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_atcam_entry*, align 8
  %11 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_region** %8, align 8
  store %struct.mlxsw_sp_acl_atcam_chunk* %2, %struct.mlxsw_sp_acl_atcam_chunk** %9, align 8
  store %struct.mlxsw_sp_acl_atcam_entry* %3, %struct.mlxsw_sp_acl_atcam_entry** %10, align 8
  store %struct.mlxsw_sp_acl_rule_info* %4, %struct.mlxsw_sp_acl_rule_info** %11, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %14 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %8, align 8
  %15 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %10, align 8
  %16 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %11, align 8
  %17 = call i32 @__mlxsw_sp_acl_atcam_entry_add(%struct.mlxsw_sp* %13, %struct.mlxsw_sp_acl_atcam_region* %14, %struct.mlxsw_sp_acl_atcam_entry* %15, %struct.mlxsw_sp_acl_rule_info* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %39

21:                                               ; preds = %5
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %23 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %8, align 8
  %24 = call i32 @trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill(%struct.mlxsw_sp* %22, %struct.mlxsw_sp_acl_atcam_region* %23)
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %26 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %8, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %26, i32 0, i32 0
  %28 = load %struct.mlxsw_sp_acl_atcam_chunk*, %struct.mlxsw_sp_acl_atcam_chunk** %9, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_chunk, %struct.mlxsw_sp_acl_atcam_chunk* %28, i32 0, i32 0
  %30 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %10, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %30, i32 0, i32 0
  %32 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %11, align 8
  %33 = call i32 @mlxsw_sp_acl_ctcam_entry_add(%struct.mlxsw_sp* %25, i32* %27, i32* %29, i32* %31, %struct.mlxsw_sp_acl_rule_info* %32, i32 1)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %39

37:                                               ; preds = %21
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %36, %20
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @__mlxsw_sp_acl_atcam_entry_add(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_rule_info*) #1

declare dso_local i32 @trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_atcam_region*) #1

declare dso_local i32 @mlxsw_sp_acl_ctcam_entry_add(%struct.mlxsw_sp*, i32*, i32*, i32*, %struct.mlxsw_sp_acl_rule_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
