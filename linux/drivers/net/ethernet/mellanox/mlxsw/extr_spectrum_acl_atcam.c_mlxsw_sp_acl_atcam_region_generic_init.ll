; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_generic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_generic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_atcam_region = type { %struct.mlxsw_sp_acl_atcam_region_generic* }
%struct.mlxsw_sp_acl_atcam_region_generic = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_atcam_region*)* @mlxsw_sp_acl_atcam_region_generic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_atcam_region_generic_init(%struct.mlxsw_sp_acl_atcam_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_atcam_region_generic*, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mlxsw_sp_acl_atcam_region_generic* @kzalloc(i32 4, i32 %5)
  store %struct.mlxsw_sp_acl_atcam_region_generic* %6, %struct.mlxsw_sp_acl_atcam_region_generic** %4, align 8
  %7 = load %struct.mlxsw_sp_acl_atcam_region_generic*, %struct.mlxsw_sp_acl_atcam_region_generic** %4, align 8
  %8 = icmp ne %struct.mlxsw_sp_acl_atcam_region_generic* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.mlxsw_sp_acl_atcam_region_generic*, %struct.mlxsw_sp_acl_atcam_region_generic** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_generic, %struct.mlxsw_sp_acl_atcam_region_generic* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @refcount_set(i32* %15, i32 1)
  %17 = load %struct.mlxsw_sp_acl_atcam_region_generic*, %struct.mlxsw_sp_acl_atcam_region_generic** %4, align 8
  %18 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %18, i32 0, i32 0
  store %struct.mlxsw_sp_acl_atcam_region_generic* %17, %struct.mlxsw_sp_acl_atcam_region_generic** %19, align 8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %12, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.mlxsw_sp_acl_atcam_region_generic* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
