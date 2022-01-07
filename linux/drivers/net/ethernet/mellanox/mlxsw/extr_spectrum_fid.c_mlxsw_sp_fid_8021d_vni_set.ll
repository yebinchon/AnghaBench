; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021d_vni_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021d_vni_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32, i32, i32, %struct.mlxsw_sp_fid_family* }
%struct.mlxsw_sp_fid_family = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_fid*, i32)* @mlxsw_sp_fid_8021d_vni_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fid_8021d_vni_set(%struct.mlxsw_sp_fid* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_fid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_fid_family*, align 8
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %6, i32 0, i32 3
  %8 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  store %struct.mlxsw_sp_fid_family* %8, %struct.mlxsw_sp_fid_family** %5, align 8
  %9 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mlxsw_sp_fid_vni_op(i32 %11, i32 %14, i32 %15, i32 1, i32 %18, i32 %21)
  ret i32 %22
}

declare dso_local i32 @mlxsw_sp_fid_vni_op(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
