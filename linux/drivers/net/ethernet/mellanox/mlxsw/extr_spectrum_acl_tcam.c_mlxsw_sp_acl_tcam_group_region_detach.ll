; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_group_region_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_group_region_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam_region = type { i32, %struct.mlxsw_sp_acl_tcam_group* }
%struct.mlxsw_sp_acl_tcam_group = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_region*)* @mlxsw_sp_acl_tcam_group_region_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_tcam_group_region_detach(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_region* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_tcam_group*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %1, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %6 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %6, i32 0, i32 1
  %8 = load %struct.mlxsw_sp_acl_tcam_group*, %struct.mlxsw_sp_acl_tcam_group** %7, align 8
  store %struct.mlxsw_sp_acl_tcam_group* %8, %struct.mlxsw_sp_acl_tcam_group** %5, align 8
  %9 = load %struct.mlxsw_sp_acl_tcam_group*, %struct.mlxsw_sp_acl_tcam_group** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, %struct.mlxsw_sp_acl_tcam_group* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %12, i32 0, i32 0
  %14 = call i32 @list_del(i32* %13)
  %15 = load %struct.mlxsw_sp_acl_tcam_group*, %struct.mlxsw_sp_acl_tcam_group** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, %struct.mlxsw_sp_acl_tcam_group* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %20 = load %struct.mlxsw_sp_acl_tcam_group*, %struct.mlxsw_sp_acl_tcam_group** %5, align 8
  %21 = call i32 @mlxsw_sp_acl_tcam_group_update(%struct.mlxsw_sp* %19, %struct.mlxsw_sp_acl_tcam_group* %20)
  %22 = load %struct.mlxsw_sp_acl_tcam_group*, %struct.mlxsw_sp_acl_tcam_group** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, %struct.mlxsw_sp_acl_tcam_group* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_group_update(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_group*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
