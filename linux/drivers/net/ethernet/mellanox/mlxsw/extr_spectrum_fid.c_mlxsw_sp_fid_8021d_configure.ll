; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021d_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021d_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32, %struct.mlxsw_sp_fid_family* }
%struct.mlxsw_sp_fid_family = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_fid*)* @mlxsw_sp_fid_8021d_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fid_8021d_configure(%struct.mlxsw_sp_fid* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_fid*, align 8
  %3 = alloca %struct.mlxsw_sp_fid_family*, align 8
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %2, align 8
  %4 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %4, i32 0, i32 1
  %6 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %5, align 8
  store %struct.mlxsw_sp_fid_family* %6, %struct.mlxsw_sp_fid_family** %3, align 8
  %7 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mlxsw_sp_fid_op(i32 %9, i32 %12, i32 0, i32 1)
  ret i32 %13
}

declare dso_local i32 @mlxsw_sp_fid_op(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
