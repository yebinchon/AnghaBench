; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021q_deconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021q_deconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fid_8021q = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_fid*)* @mlxsw_sp_fid_8021q_deconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fid_8021q_deconfigure(%struct.mlxsw_sp_fid* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_fid*, align 8
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_fid_8021q*, align 8
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %2, align 8
  %5 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  store %struct.mlxsw_sp* %9, %struct.mlxsw_sp** %3, align 8
  %10 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %11 = call %struct.mlxsw_sp_fid_8021q* @mlxsw_sp_fid_8021q_fid(%struct.mlxsw_sp_fid* %10)
  store %struct.mlxsw_sp_fid_8021q* %11, %struct.mlxsw_sp_fid_8021q** %4, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %13 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mlxsw_sp_fid_8021q*, %struct.mlxsw_sp_fid_8021q** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_fid_8021q, %struct.mlxsw_sp_fid_8021q* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlxsw_sp_fid_vid_map(%struct.mlxsw_sp* %12, i32 %15, i32 %18, i32 0)
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %21 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mlxsw_sp_fid_op(%struct.mlxsw_sp* %20, i32 %23, i32 0, i32 0)
  ret void
}

declare dso_local %struct.mlxsw_sp_fid_8021q* @mlxsw_sp_fid_8021q_fid(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_fid_vid_map(%struct.mlxsw_sp*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_op(%struct.mlxsw_sp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
