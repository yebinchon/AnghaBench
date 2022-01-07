; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021d_port_vid_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021d_port_vid_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_port = type { i64, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_fid*, %struct.mlxsw_sp_port*, i32)* @mlxsw_sp_fid_8021d_port_vid_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fid_8021d_port_vid_map(%struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_port* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_fid*, align 8
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %5, align 8
  store %struct.mlxsw_sp_port* %1, %struct.mlxsw_sp_port** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %11, i32 0, i32 1
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  store %struct.mlxsw_sp* %13, %struct.mlxsw_sp** %8, align 8
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %18 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %5, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @__mlxsw_sp_fid_port_vid_map(%struct.mlxsw_sp* %17, i32 %20, i64 %23, i32 %24, i32 1)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %3
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %43 = call i32 @mlxsw_sp_port_vp_mode_trans(%struct.mlxsw_sp_port* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %30
  store i32 0, i32* %4, align 4
  br label %69

49:                                               ; preds = %46
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %60 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %5, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @__mlxsw_sp_fid_port_vid_map(%struct.mlxsw_sp* %59, i32 %62, i64 %65, i32 %66, i32 0)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %49, %48, %28
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @__mlxsw_sp_fid_port_vid_map(%struct.mlxsw_sp*, i32, i64, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_vp_mode_trans(%struct.mlxsw_sp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
