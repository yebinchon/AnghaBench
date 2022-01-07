; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vgroup_use_patterns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vgroup_use_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_tcam_vgroup = type { i32, %struct.mlxsw_sp_acl_tcam_pattern*, %struct.mlxsw_afk_element_usage, i64 }
%struct.mlxsw_sp_acl_tcam_pattern = type { i32, i32 }
%struct.mlxsw_afk_element_usage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage*)* @mlxsw_sp_acl_tcam_vgroup_use_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_tcam_vgroup_use_patterns(%struct.mlxsw_sp_acl_tcam_vgroup* %0, %struct.mlxsw_afk_element_usage* %1, %struct.mlxsw_afk_element_usage* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_acl_tcam_vgroup*, align 8
  %5 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %6 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_pattern*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_tcam_vgroup* %0, %struct.mlxsw_sp_acl_tcam_vgroup** %4, align 8
  store %struct.mlxsw_afk_element_usage* %1, %struct.mlxsw_afk_element_usage** %5, align 8
  store %struct.mlxsw_afk_element_usage* %2, %struct.mlxsw_afk_element_usage** %6, align 8
  %9 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %6, align 8
  %15 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %15, i32 0, i32 2
  %17 = call i32 @memcpy(%struct.mlxsw_afk_element_usage* %14, %struct.mlxsw_afk_element_usage* %16, i32 4)
  %18 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %5, align 8
  %19 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %6, align 8
  %20 = call i64 @mlxsw_afk_element_usage_subset(%struct.mlxsw_afk_element_usage* %18, %struct.mlxsw_afk_element_usage* %19)
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  br label %60

25:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %53, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %4, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %33, i32 0, i32 1
  %35 = load %struct.mlxsw_sp_acl_tcam_pattern*, %struct.mlxsw_sp_acl_tcam_pattern** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_pattern, %struct.mlxsw_sp_acl_tcam_pattern* %35, i64 %37
  store %struct.mlxsw_sp_acl_tcam_pattern* %38, %struct.mlxsw_sp_acl_tcam_pattern** %7, align 8
  %39 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %6, align 8
  %40 = load %struct.mlxsw_sp_acl_tcam_pattern*, %struct.mlxsw_sp_acl_tcam_pattern** %7, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_pattern, %struct.mlxsw_sp_acl_tcam_pattern* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlxsw_sp_acl_tcam_pattern*, %struct.mlxsw_sp_acl_tcam_pattern** %7, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_pattern, %struct.mlxsw_sp_acl_tcam_pattern* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mlxsw_afk_element_usage_fill(%struct.mlxsw_afk_element_usage* %39, i32 %42, i32 %45)
  %47 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %5, align 8
  %48 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %6, align 8
  %49 = call i64 @mlxsw_afk_element_usage_subset(%struct.mlxsw_afk_element_usage* %47, %struct.mlxsw_afk_element_usage* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  br label %60

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %26

56:                                               ; preds = %26
  %57 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %6, align 8
  %58 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %5, align 8
  %59 = call i32 @memcpy(%struct.mlxsw_afk_element_usage* %57, %struct.mlxsw_afk_element_usage* %58, i32 4)
  br label %60

60:                                               ; preds = %56, %51, %13
  ret void
}

declare dso_local i32 @memcpy(%struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @mlxsw_afk_element_usage_subset(%struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage*) #1

declare dso_local i32 @mlxsw_afk_element_usage_fill(%struct.mlxsw_afk_element_usage*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
