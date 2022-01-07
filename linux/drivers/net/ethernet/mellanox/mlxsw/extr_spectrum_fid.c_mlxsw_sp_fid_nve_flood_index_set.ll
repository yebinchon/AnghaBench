; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_nve_flood_index_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_nve_flood_index_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32, i32, %struct.mlxsw_sp_fid_family* }
%struct.mlxsw_sp_fid_family = type { %struct.mlxsw_sp_fid_ops* }
%struct.mlxsw_sp_fid_ops = type { i32 (%struct.mlxsw_sp_fid.0*, i32)* }
%struct.mlxsw_sp_fid.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_fid_nve_flood_index_set(%struct.mlxsw_sp_fid* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %7 = alloca %struct.mlxsw_sp_fid_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %9, i32 0, i32 2
  %11 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %10, align 8
  store %struct.mlxsw_sp_fid_family* %11, %struct.mlxsw_sp_fid_family** %6, align 8
  %12 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %13, align 8
  store %struct.mlxsw_sp_fid_ops* %14, %struct.mlxsw_sp_fid_ops** %7, align 8
  %15 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.mlxsw_sp_fid.0*, i32)*, i32 (%struct.mlxsw_sp_fid.0*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.mlxsw_sp_fid.0*, i32)* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ true, %2 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %24
  %33 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %7, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %33, i32 0, i32 0
  %35 = load i32 (%struct.mlxsw_sp_fid.0*, i32)*, i32 (%struct.mlxsw_sp_fid.0*, i32)** %34, align 8
  %36 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %37 = bitcast %struct.mlxsw_sp_fid* %36 to %struct.mlxsw_sp_fid.0*
  %38 = load i32, i32* %5, align 4
  %39 = call i32 %35(%struct.mlxsw_sp_fid.0* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %42, %29
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
