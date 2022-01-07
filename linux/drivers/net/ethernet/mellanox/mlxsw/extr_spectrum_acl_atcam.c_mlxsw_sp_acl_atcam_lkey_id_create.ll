; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_lkey_id_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_lkey_id_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_atcam_lkey_id = type { i32, i32, i32, i64 }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.mlxsw_sp_acl_atcam_region_12kb* }
%struct.mlxsw_sp_acl_atcam_region_12kb = type { i64, i32, i32 }
%struct.mlxsw_sp_acl_atcam_lkey_id_ht_key = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_acl_atcam_lkey_id_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_atcam_lkey_id* (%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key*)* @mlxsw_sp_acl_atcam_lkey_id_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_atcam_lkey_id* @mlxsw_sp_acl_atcam_lkey_id_create(%struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_atcam_lkey_id*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_atcam_region_12kb*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_atcam_lkey_id*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  store %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key* %1, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key** %5, align 8
  %10 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %11, align 8
  store %struct.mlxsw_sp_acl_atcam_region_12kb* %12, %struct.mlxsw_sp_acl_atcam_region_12kb** %6, align 8
  %13 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %6, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @find_first_zero_bit(i32 %15, i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %6, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__set_bit(i64 %26, i32 %29)
  br label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOBUFS, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.mlxsw_sp_acl_atcam_lkey_id* @ERR_PTR(i32 %33)
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %34, %struct.mlxsw_sp_acl_atcam_lkey_id** %3, align 8
  br label %76

35:                                               ; preds = %25
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mlxsw_sp_acl_atcam_lkey_id* @kzalloc(i32 24, i32 %36)
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %37, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  %38 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  %39 = icmp ne %struct.mlxsw_sp_acl_atcam_lkey_id* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %68

43:                                               ; preds = %35
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %47, i32 0, i32 2
  %49 = load %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key*, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key** %5, align 8
  %50 = call i32 @memcpy(i32* %48, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key* %49, i32 4)
  %51 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %51, i32 0, i32 1
  %53 = call i32 @refcount_set(i32* %52, i32 1)
  %54 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %6, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %54, i32 0, i32 2
  %56 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %56, i32 0, i32 0
  %58 = load i32, i32* @mlxsw_sp_acl_atcam_lkey_id_ht_params, align 4
  %59 = call i32 @rhashtable_insert_fast(i32* %55, i32* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %43
  br label %65

63:                                               ; preds = %43
  %64 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %64, %struct.mlxsw_sp_acl_atcam_lkey_id** %3, align 8
  br label %76

65:                                               ; preds = %62
  %66 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  %67 = call i32 @kfree(%struct.mlxsw_sp_acl_atcam_lkey_id* %66)
  br label %68

68:                                               ; preds = %65, %40
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %6, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @__clear_bit(i64 %69, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = call %struct.mlxsw_sp_acl_atcam_lkey_id* @ERR_PTR(i32 %74)
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %75, %struct.mlxsw_sp_acl_atcam_lkey_id** %3, align 8
  br label %76

76:                                               ; preds = %68, %63, %31
  %77 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %3, align 8
  ret %struct.mlxsw_sp_acl_atcam_lkey_id* %77
}

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local %struct.mlxsw_sp_acl_atcam_lkey_id* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_sp_acl_atcam_lkey_id* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_atcam_lkey_id*) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
