; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_nve_flood_index_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_nve_flood_index_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32, %struct.mlxsw_sp_fid_family* }
%struct.mlxsw_sp_fid_family = type { %struct.mlxsw_sp_fid_ops* }
%struct.mlxsw_sp_fid_ops = type { i32 (%struct.mlxsw_sp_fid.0*)* }
%struct.mlxsw_sp_fid.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_fid_nve_flood_index_clear(%struct.mlxsw_sp_fid* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_fid*, align 8
  %3 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %4 = alloca %struct.mlxsw_sp_fid_ops*, align 8
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %2, align 8
  %5 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %5, i32 0, i32 1
  %7 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %6, align 8
  store %struct.mlxsw_sp_fid_family* %7, %struct.mlxsw_sp_fid_family** %3, align 8
  %8 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %9, align 8
  store %struct.mlxsw_sp_fid_ops* %10, %struct.mlxsw_sp_fid_ops** %4, align 8
  %11 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %11, i32 0, i32 0
  %13 = load i32 (%struct.mlxsw_sp_fid.0*)*, i32 (%struct.mlxsw_sp_fid.0*)** %12, align 8
  %14 = icmp ne i32 (%struct.mlxsw_sp_fid.0*)* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i1 [ true, %1 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %36

27:                                               ; preds = %21
  %28 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %4, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.mlxsw_sp_fid.0*)*, i32 (%struct.mlxsw_sp_fid.0*)** %31, align 8
  %33 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %34 = bitcast %struct.mlxsw_sp_fid* %33 to %struct.mlxsw_sp_fid.0*
  %35 = call i32 %32(%struct.mlxsw_sp_fid.0* %34)
  br label %36

36:                                               ; preds = %27, %26
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
