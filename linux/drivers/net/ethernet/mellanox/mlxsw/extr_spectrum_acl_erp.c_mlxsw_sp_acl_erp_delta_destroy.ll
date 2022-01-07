; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_delta_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_delta_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_delta = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.mlxsw_sp_acl_erp_table* }
%struct.mlxsw_sp_acl_erp_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @mlxsw_sp_acl_erp_delta_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_erp_delta_destroy(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_erp_delta*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mlxsw_sp_acl_erp_delta*
  store %struct.mlxsw_sp_acl_erp_delta* %9, %struct.mlxsw_sp_acl_erp_delta** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.mlxsw_sp_acl_atcam_region*
  store %struct.mlxsw_sp_acl_atcam_region* %11, %struct.mlxsw_sp_acl_atcam_region** %6, align 8
  %12 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %13, align 8
  store %struct.mlxsw_sp_acl_erp_table* %14, %struct.mlxsw_sp_acl_erp_table** %7, align 8
  %15 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %7, align 8
  %16 = load %struct.mlxsw_sp_acl_erp_delta*, %struct.mlxsw_sp_acl_erp_delta** %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, %struct.mlxsw_sp_acl_erp_delta* %16, i32 0, i32 0
  %18 = call i32 @mlxsw_sp_acl_erp_master_mask_clear(%struct.mlxsw_sp_acl_erp_table* %15, i32* %17)
  %19 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %7, align 8
  %20 = call i32 @mlxsw_sp_acl_erp_delta_dec(%struct.mlxsw_sp_acl_erp_table* %19)
  %21 = load %struct.mlxsw_sp_acl_erp_delta*, %struct.mlxsw_sp_acl_erp_delta** %5, align 8
  %22 = call i32 @kfree(%struct.mlxsw_sp_acl_erp_delta* %21)
  ret void
}

declare dso_local i32 @mlxsw_sp_acl_erp_master_mask_clear(%struct.mlxsw_sp_acl_erp_table*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_delta_dec(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_erp_delta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
