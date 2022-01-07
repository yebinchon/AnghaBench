; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_12kb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_12kb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_atcam_region = type { %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.TYPE_2__* }
%struct.mlxsw_sp_acl_atcam_region_12kb = type { %struct.mlxsw_sp_acl_atcam_region_12kb*, i32, i32 }
%struct.TYPE_2__ = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@ACL_MAX_LARGE_KEY_ID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_acl_atcam_lkey_id_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_atcam_region*)* @mlxsw_sp_acl_atcam_region_12kb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_atcam_region_12kb_init(%struct.mlxsw_sp_acl_atcam_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_atcam_region_12kb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  %9 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  store %struct.mlxsw_sp* %13, %struct.mlxsw_sp** %4, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ACL_MAX_LARGE_KEY_ID, align 4
  %18 = call i32 @MLXSW_CORE_RES_VALID(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %1
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ACL_MAX_LARGE_KEY_ID, align 4
  %28 = call i32 @MLXSW_CORE_RES_GET(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i64 16, i32 %29)
  %31 = bitcast i8* %30 to %struct.mlxsw_sp_acl_atcam_region_12kb*
  store %struct.mlxsw_sp_acl_atcam_region_12kb* %31, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %32 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %33 = icmp ne %struct.mlxsw_sp_acl_atcam_region_12kb* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %78

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @BITS_TO_LONGS(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kzalloc(i64 %42, i32 %43)
  %45 = bitcast i8* %44 to %struct.mlxsw_sp_acl_atcam_region_12kb*
  %46 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %46, i32 0, i32 0
  store %struct.mlxsw_sp_acl_atcam_region_12kb* %45, %struct.mlxsw_sp_acl_atcam_region_12kb** %47, align 8
  %48 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %48, i32 0, i32 0
  %50 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %49, align 8
  %51 = icmp ne %struct.mlxsw_sp_acl_atcam_region_12kb* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %37
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %74

55:                                               ; preds = %37
  %56 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %56, i32 0, i32 2
  %58 = call i32 @rhashtable_init(i32* %57, i32* @mlxsw_sp_acl_atcam_lkey_id_ht_params)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %69

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %67 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %67, i32 0, i32 0
  store %struct.mlxsw_sp_acl_atcam_region_12kb* %66, %struct.mlxsw_sp_acl_atcam_region_12kb** %68, align 8
  store i32 0, i32* %2, align 4
  br label %78

69:                                               ; preds = %61
  %70 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %70, i32 0, i32 0
  %72 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %71, align 8
  %73 = call i32 @kfree(%struct.mlxsw_sp_acl_atcam_region_12kb* %72)
  br label %74

74:                                               ; preds = %69, %52
  %75 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %76 = call i32 @kfree(%struct.mlxsw_sp_acl_atcam_region_12kb* %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %62, %34, %20
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #1

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_atcam_region_12kb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
