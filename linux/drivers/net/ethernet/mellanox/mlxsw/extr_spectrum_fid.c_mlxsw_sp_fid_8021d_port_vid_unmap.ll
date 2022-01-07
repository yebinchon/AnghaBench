; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021d_port_vid_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021d_port_vid_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_port = type { i64, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_fid*, %struct.mlxsw_sp_port*, i32)* @mlxsw_sp_fid_8021d_port_vid_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fid_8021d_port_vid_unmap(%struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_port* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca i64, align 8
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %4, align 8
  store %struct.mlxsw_sp_port* %1, %struct.mlxsw_sp_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %9, i32 0, i32 1
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  store %struct.mlxsw_sp* %11, %struct.mlxsw_sp** %7, align 8
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %26 = call i32 @mlxsw_sp_port_vlan_mode_trans(%struct.mlxsw_sp_port* %25)
  br label %27

27:                                               ; preds = %24, %3
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %38 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @__mlxsw_sp_fid_port_vid_map(%struct.mlxsw_sp* %37, i32 %40, i64 %43, i32 %44, i32 0)
  ret void
}

declare dso_local i32 @mlxsw_sp_port_vlan_mode_trans(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @__mlxsw_sp_fid_port_vid_map(%struct.mlxsw_sp*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
