; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_acl_tcam.c_mlxsw_sp1_acl_tcam_region_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_acl_tcam.c_mlxsw_sp1_acl_tcam_region_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam_region = type { i32 }
%struct.mlxsw_sp1_acl_tcam_region = type { i32, %struct.mlxsw_sp_acl_tcam_region* }

@mlxsw_sp1_acl_ctcam_region_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, i8*, %struct.mlxsw_sp_acl_tcam_region*, i8*)* @mlxsw_sp1_acl_tcam_region_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_acl_tcam_region_init(%struct.mlxsw_sp* %0, i8* %1, i8* %2, %struct.mlxsw_sp_acl_tcam_region* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mlxsw_sp1_acl_tcam_region*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %3, %struct.mlxsw_sp_acl_tcam_region** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.mlxsw_sp1_acl_tcam_region*
  store %struct.mlxsw_sp1_acl_tcam_region* %15, %struct.mlxsw_sp1_acl_tcam_region** %12, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %17 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %12, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %17, i32 0, i32 0
  %19 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %10, align 8
  %20 = call i32 @mlxsw_sp_acl_ctcam_region_init(%struct.mlxsw_sp* %16, i32* %18, %struct.mlxsw_sp_acl_tcam_region* %19, i32* @mlxsw_sp1_acl_ctcam_region_ops)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %6, align 4
  br label %41

25:                                               ; preds = %5
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %27 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %12, align 8
  %28 = call i32 @mlxsw_sp1_acl_ctcam_region_catchall_add(%struct.mlxsw_sp* %26, %struct.mlxsw_sp1_acl_tcam_region* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %36

32:                                               ; preds = %25
  %33 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %10, align 8
  %34 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %12, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %34, i32 0, i32 1
  store %struct.mlxsw_sp_acl_tcam_region* %33, %struct.mlxsw_sp_acl_tcam_region** %35, align 8
  store i32 0, i32* %6, align 4
  br label %41

36:                                               ; preds = %31
  %37 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %12, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %37, i32 0, i32 0
  %39 = call i32 @mlxsw_sp_acl_ctcam_region_fini(i32* %38)
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %36, %32, %23
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @mlxsw_sp_acl_ctcam_region_init(%struct.mlxsw_sp*, i32*, %struct.mlxsw_sp_acl_tcam_region*, i32*) #1

declare dso_local i32 @mlxsw_sp1_acl_ctcam_region_catchall_add(%struct.mlxsw_sp*, %struct.mlxsw_sp1_acl_tcam_region*) #1

declare dso_local i32 @mlxsw_sp_acl_ctcam_region_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
