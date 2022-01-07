; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_ctcam.c_mlxsw_sp_acl_ctcam_entry_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_ctcam.c_mlxsw_sp_acl_ctcam_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_ctcam_region = type { i32 }
%struct.mlxsw_sp_acl_ctcam_chunk = type { i32 }
%struct.mlxsw_sp_acl_ctcam_entry = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_ctcam_entry_add(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_ctcam_region* %1, %struct.mlxsw_sp_acl_ctcam_chunk* %2, %struct.mlxsw_sp_acl_ctcam_entry* %3, %struct.mlxsw_sp_acl_rule_info* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_ctcam_region*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_ctcam_chunk*, align 8
  %11 = alloca %struct.mlxsw_sp_acl_ctcam_entry*, align 8
  %12 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %8, align 8
  store %struct.mlxsw_sp_acl_ctcam_region* %1, %struct.mlxsw_sp_acl_ctcam_region** %9, align 8
  store %struct.mlxsw_sp_acl_ctcam_chunk* %2, %struct.mlxsw_sp_acl_ctcam_chunk** %10, align 8
  store %struct.mlxsw_sp_acl_ctcam_entry* %3, %struct.mlxsw_sp_acl_ctcam_entry** %11, align 8
  store %struct.mlxsw_sp_acl_rule_info* %4, %struct.mlxsw_sp_acl_rule_info** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %9, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, %struct.mlxsw_sp_acl_ctcam_region* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlxsw_sp_acl_ctcam_chunk*, %struct.mlxsw_sp_acl_ctcam_chunk** %10, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_chunk, %struct.mlxsw_sp_acl_ctcam_chunk* %18, i32 0, i32 0
  %20 = load %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_ctcam_entry** %11, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_entry, %struct.mlxsw_sp_acl_ctcam_entry* %20, i32 0, i32 0
  %22 = call i32 @parman_item_add(i32 %17, i32* %19, i32* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %7, align 4
  br label %48

27:                                               ; preds = %6
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %29 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %9, align 8
  %30 = load %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_ctcam_entry** %11, align 8
  %31 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @mlxsw_sp_acl_ctcam_region_entry_insert(%struct.mlxsw_sp* %28, %struct.mlxsw_sp_acl_ctcam_region* %29, %struct.mlxsw_sp_acl_ctcam_entry* %30, %struct.mlxsw_sp_acl_rule_info* %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %48

38:                                               ; preds = %36
  %39 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %9, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, %struct.mlxsw_sp_acl_ctcam_region* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlxsw_sp_acl_ctcam_chunk*, %struct.mlxsw_sp_acl_ctcam_chunk** %10, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_chunk, %struct.mlxsw_sp_acl_ctcam_chunk* %42, i32 0, i32 0
  %44 = load %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_ctcam_entry** %11, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_entry, %struct.mlxsw_sp_acl_ctcam_entry* %44, i32 0, i32 0
  %46 = call i32 @parman_item_remove(i32 %41, i32* %43, i32* %45)
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %38, %37, %25
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @parman_item_add(i32, i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_ctcam_region_entry_insert(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_rule_info*, i32) #1

declare dso_local i32 @parman_item_remove(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
