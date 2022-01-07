; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vregion_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vregion_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_tcam_vregion = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam_vgroup = type { i32 }
%struct.mlxsw_afk_element_usage = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_tcam_vregion* (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vgroup*, i32, %struct.mlxsw_afk_element_usage*)* @mlxsw_sp_acl_tcam_vregion_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_tcam_vregion* @mlxsw_sp_acl_tcam_vregion_get(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_vgroup* %1, i32 %2, %struct.mlxsw_afk_element_usage* %3) #0 {
  %5 = alloca %struct.mlxsw_sp_acl_tcam_vregion*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_vgroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %10 = alloca %struct.mlxsw_afk_element_usage, align 4
  %11 = alloca %struct.mlxsw_sp_acl_tcam_vregion*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_tcam_vgroup* %1, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlxsw_afk_element_usage* %3, %struct.mlxsw_afk_element_usage** %9, align 8
  %13 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %9, align 8
  %16 = call %struct.mlxsw_sp_acl_tcam_vregion* @mlxsw_sp_acl_tcam_vgroup_vregion_find(%struct.mlxsw_sp_acl_tcam_vgroup* %13, i32 %14, %struct.mlxsw_afk_element_usage* %15, i32* %12)
  store %struct.mlxsw_sp_acl_tcam_vregion* %16, %struct.mlxsw_sp_acl_tcam_vregion** %11, align 8
  %17 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %11, align 8
  %18 = icmp ne %struct.mlxsw_sp_acl_tcam_vregion* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.mlxsw_sp_acl_tcam_vregion* @ERR_PTR(i32 %24)
  store %struct.mlxsw_sp_acl_tcam_vregion* %25, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  br label %40

26:                                               ; preds = %19
  %27 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %11, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %11, align 8
  store %struct.mlxsw_sp_acl_tcam_vregion* %31, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  br label %40

32:                                               ; preds = %4
  %33 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %34 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %9, align 8
  %35 = call i32 @mlxsw_sp_acl_tcam_vgroup_use_patterns(%struct.mlxsw_sp_acl_tcam_vgroup* %33, %struct.mlxsw_afk_element_usage* %34, %struct.mlxsw_afk_element_usage* %10)
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %37 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.mlxsw_sp_acl_tcam_vregion* @mlxsw_sp_acl_tcam_vregion_create(%struct.mlxsw_sp* %36, %struct.mlxsw_sp_acl_tcam_vgroup* %37, i32 %38, %struct.mlxsw_afk_element_usage* %10)
  store %struct.mlxsw_sp_acl_tcam_vregion* %39, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  br label %40

40:                                               ; preds = %32, %26, %22
  %41 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  ret %struct.mlxsw_sp_acl_tcam_vregion* %41
}

declare dso_local %struct.mlxsw_sp_acl_tcam_vregion* @mlxsw_sp_acl_tcam_vgroup_vregion_find(%struct.mlxsw_sp_acl_tcam_vgroup*, i32, %struct.mlxsw_afk_element_usage*, i32*) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_vregion* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vgroup_use_patterns(%struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage*) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_vregion* @mlxsw_sp_acl_tcam_vregion_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vgroup*, i32, %struct.mlxsw_afk_element_usage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
