; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vgroup_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vgroup_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam = type { i32 }
%struct.mlxsw_sp_acl_tcam_vgroup = type { i32, i32, i32, i32, i32, i32, i32, %struct.mlxsw_sp_acl_tcam_pattern* }
%struct.mlxsw_sp_acl_tcam_pattern = type { i32 }
%struct.mlxsw_afk_element_usage = type { i32 }

@mlxsw_sp_acl_tcam_vchunk_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_pattern*, i32, %struct.mlxsw_afk_element_usage*, i32)* @mlxsw_sp_acl_tcam_vgroup_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_tcam_vgroup_add(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam* %1, %struct.mlxsw_sp_acl_tcam_vgroup* %2, %struct.mlxsw_sp_acl_tcam_pattern* %3, i32 %4, %struct.mlxsw_afk_element_usage* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_tcam*, align 8
  %11 = alloca %struct.mlxsw_sp_acl_tcam_vgroup*, align 8
  %12 = alloca %struct.mlxsw_sp_acl_tcam_pattern*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %9, align 8
  store %struct.mlxsw_sp_acl_tcam* %1, %struct.mlxsw_sp_acl_tcam** %10, align 8
  store %struct.mlxsw_sp_acl_tcam_vgroup* %2, %struct.mlxsw_sp_acl_tcam_vgroup** %11, align 8
  store %struct.mlxsw_sp_acl_tcam_pattern* %3, %struct.mlxsw_sp_acl_tcam_pattern** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.mlxsw_afk_element_usage* %5, %struct.mlxsw_afk_element_usage** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.mlxsw_sp_acl_tcam_pattern*, %struct.mlxsw_sp_acl_tcam_pattern** %12, align 8
  %18 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %11, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %18, i32 0, i32 7
  store %struct.mlxsw_sp_acl_tcam_pattern* %17, %struct.mlxsw_sp_acl_tcam_pattern** %19, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %11, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %11, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %14, align 8
  %27 = icmp ne %struct.mlxsw_afk_element_usage* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %7
  %29 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %11, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %29, i32 0, i32 2
  store i32 1, i32* %30, align 8
  %31 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %11, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %31, i32 0, i32 6
  %33 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %14, align 8
  %34 = call i32 @memcpy(i32* %32, %struct.mlxsw_afk_element_usage* %33, i32 4)
  br label %35

35:                                               ; preds = %28, %7
  %36 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %11, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %36, i32 0, i32 5
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %10, align 8
  %40 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %11, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %40, i32 0, i32 3
  %42 = call i32 @mlxsw_sp_acl_tcam_group_add(%struct.mlxsw_sp_acl_tcam* %39, i32* %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %8, align 4
  br label %60

47:                                               ; preds = %35
  %48 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %11, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %48, i32 0, i32 4
  %50 = call i32 @rhashtable_init(i32* %49, i32* @mlxsw_sp_acl_tcam_vchunk_ht_params)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %55

54:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %60

55:                                               ; preds = %53
  %56 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %11, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %56, i32 0, i32 3
  %58 = call i32 @mlxsw_sp_acl_tcam_group_del(i32* %57)
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %54, %45
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @memcpy(i32*, %struct.mlxsw_afk_element_usage*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_group_add(%struct.mlxsw_sp_acl_tcam*, i32*) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_group_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
