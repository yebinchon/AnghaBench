; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vchunk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vchunk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_tcam_vchunk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam_vgroup = type { i32 }
%struct.mlxsw_afk_element_usage = type { i32 }

@mlxsw_sp_acl_tcam_vchunk_ht_params = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_tcam_vchunk* (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vgroup*, i32, %struct.mlxsw_afk_element_usage*)* @mlxsw_sp_acl_tcam_vchunk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_tcam_vchunk* @mlxsw_sp_acl_tcam_vchunk_get(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_vgroup* %1, i32 %2, %struct.mlxsw_afk_element_usage* %3) #0 {
  %5 = alloca %struct.mlxsw_sp_acl_tcam_vchunk*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_vgroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_tcam_vchunk*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_tcam_vgroup* %1, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlxsw_afk_element_usage* %3, %struct.mlxsw_afk_element_usage** %9, align 8
  %11 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %11, i32 0, i32 0
  %13 = load i32, i32* @mlxsw_sp_acl_tcam_vchunk_ht_params, align 4
  %14 = call %struct.mlxsw_sp_acl_tcam_vchunk* @rhashtable_lookup_fast(i32* %12, i32* %8, i32 %13)
  store %struct.mlxsw_sp_acl_tcam_vchunk* %14, %struct.mlxsw_sp_acl_tcam_vchunk** %10, align 8
  %15 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %10, align 8
  %16 = icmp ne %struct.mlxsw_sp_acl_tcam_vchunk* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %4
  %18 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %10, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %9, align 8
  %24 = call i32 @mlxsw_afk_key_info_subset(i32 %22, %struct.mlxsw_afk_element_usage* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.mlxsw_sp_acl_tcam_vchunk* @ERR_PTR(i32 %32)
  store %struct.mlxsw_sp_acl_tcam_vchunk* %33, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  br label %46

34:                                               ; preds = %17
  %35 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %10, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %10, align 8
  store %struct.mlxsw_sp_acl_tcam_vchunk* %39, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  br label %46

40:                                               ; preds = %4
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %42 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %9, align 8
  %45 = call %struct.mlxsw_sp_acl_tcam_vchunk* @mlxsw_sp_acl_tcam_vchunk_create(%struct.mlxsw_sp* %41, %struct.mlxsw_sp_acl_tcam_vgroup* %42, i32 %43, %struct.mlxsw_afk_element_usage* %44)
  store %struct.mlxsw_sp_acl_tcam_vchunk* %45, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  br label %46

46:                                               ; preds = %40, %34, %30
  %47 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  ret %struct.mlxsw_sp_acl_tcam_vchunk* %47
}

declare dso_local %struct.mlxsw_sp_acl_tcam_vchunk* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_afk_key_info_subset(i32, %struct.mlxsw_afk_element_usage*) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_vchunk* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_vchunk* @mlxsw_sp_acl_tcam_vchunk_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vgroup*, i32, %struct.mlxsw_afk_element_usage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
