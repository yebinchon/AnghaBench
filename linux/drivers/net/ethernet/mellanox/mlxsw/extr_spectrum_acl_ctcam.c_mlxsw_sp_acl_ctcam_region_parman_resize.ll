; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_ctcam.c_mlxsw_sp_acl_ctcam_region_parman_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_ctcam.c_mlxsw_sp_acl_ctcam_region_parman_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_ctcam_region = type { %struct.mlxsw_sp_acl_tcam_region* }
%struct.mlxsw_sp_acl_tcam_region = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@ACL_MAX_TCAM_RULES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @mlxsw_sp_acl_ctcam_region_parman_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_ctcam_region_parman_resize(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlxsw_sp_acl_ctcam_region*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mlxsw_sp_acl_ctcam_region*
  store %struct.mlxsw_sp_acl_ctcam_region* %11, %struct.mlxsw_sp_acl_ctcam_region** %6, align 8
  %12 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, %struct.mlxsw_sp_acl_ctcam_region* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %13, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %14, %struct.mlxsw_sp_acl_tcam_region** %7, align 8
  %15 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %15, i32 0, i32 0
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %16, align 8
  store %struct.mlxsw_sp* %17, %struct.mlxsw_sp** %8, align 8
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ACL_MAX_TCAM_RULES, align 4
  %22 = call i64 @MLXSW_CORE_RES_GET(i32 %20, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %31 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @mlxsw_sp_acl_ctcam_region_resize(%struct.mlxsw_sp* %30, %struct.mlxsw_sp_acl_tcam_region* %31, i64 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local i32 @mlxsw_sp_acl_ctcam_region_resize(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_region*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
