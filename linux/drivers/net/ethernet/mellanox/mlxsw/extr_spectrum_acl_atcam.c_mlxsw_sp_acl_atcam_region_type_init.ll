; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_type_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_type_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_atcam_region = type { i32, i32, %struct.mlxsw_sp_acl_tcam_region* }
%struct.mlxsw_sp_acl_tcam_region = type { i32 }

@MLXSW_SP_ACL_ATCAM_REGION_TYPE_2KB = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_ATCAM_REGION_TYPE_4KB = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_ATCAM_REGION_TYPE_8KB = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_ATCAM_REGION_TYPE_12KB = common dso_local global i32 0, align 4
@mlxsw_sp_acl_atcam_region_ops_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_atcam_region*)* @mlxsw_sp_acl_atcam_region_type_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_atcam_region_type_init(%struct.mlxsw_sp_acl_atcam_region* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %3 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %2, align 8
  %6 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %2, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %6, i32 0, i32 2
  %8 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %7, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %8, %struct.mlxsw_sp_acl_tcam_region** %3, align 8
  %9 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mlxsw_afk_key_info_blocks_count_get(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ule i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @MLXSW_SP_ACL_ATCAM_REGION_TYPE_2KB, align 4
  store i32 %16, i32* %4, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp ule i32 %18, 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @MLXSW_SP_ACL_ATCAM_REGION_TYPE_4KB, align 4
  store i32 %21, i32* %4, align 4
  br label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp ule i32 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @MLXSW_SP_ACL_ATCAM_REGION_TYPE_8KB, align 4
  store i32 %26, i32* %4, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @MLXSW_SP_ACL_ATCAM_REGION_TYPE_12KB, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %20
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %2, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** @mlxsw_sp_acl_atcam_region_ops_arr, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %2, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @mlxsw_afk_key_info_blocks_count_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
