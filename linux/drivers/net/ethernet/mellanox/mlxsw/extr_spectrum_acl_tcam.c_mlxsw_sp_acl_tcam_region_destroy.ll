; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_region_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_region_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_acl_tcam_ops* }
%struct.mlxsw_sp_acl_tcam_ops = type { i32 (%struct.mlxsw_sp.0*, i32)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp_acl_tcam_region = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_region*)* @mlxsw_sp_acl_tcam_region_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_tcam_region_destroy(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_region* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_tcam_ops*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %1, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %6 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %6, i32 0, i32 0
  %8 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %7, align 8
  store %struct.mlxsw_sp_acl_tcam_ops* %8, %struct.mlxsw_sp_acl_tcam_ops** %5, align 8
  %9 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %9, i32 0, i32 0
  %11 = load i32 (%struct.mlxsw_sp.0*, i32)*, i32 (%struct.mlxsw_sp.0*, i32)** %10, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %13 = bitcast %struct.mlxsw_sp* %12 to %struct.mlxsw_sp.0*
  %14 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %11(%struct.mlxsw_sp.0* %13, i32 %16)
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %19 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %20 = call i32 @mlxsw_sp_acl_tcam_region_disable(%struct.mlxsw_sp* %18, %struct.mlxsw_sp_acl_tcam_region* %19)
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %22 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %23 = call i32 @mlxsw_sp_acl_tcam_region_free(%struct.mlxsw_sp* %21, %struct.mlxsw_sp_acl_tcam_region* %22)
  %24 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mlxsw_sp_acl_tcam_region_id_put(i32 %28, i32 %31)
  %33 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %34 = call i32 @kfree(%struct.mlxsw_sp_acl_tcam_region* %33)
  ret void
}

declare dso_local i32 @mlxsw_sp_acl_tcam_region_disable(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_region*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_region_free(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_region*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_region_id_put(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_tcam_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
