; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_vni_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_vni_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32, i32, %struct.mlxsw_sp_fid_family* }
%struct.mlxsw_sp_fid_family = type { %struct.mlxsw_sp*, %struct.mlxsw_sp_fid_ops* }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_fid_ops = type { i32 (%struct.mlxsw_sp_fid.0*)* }
%struct.mlxsw_sp_fid.0 = type opaque

@mlxsw_sp_fid_vni_ht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_fid_vni_clear(%struct.mlxsw_sp_fid* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_fid*, align 8
  %3 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %4 = alloca %struct.mlxsw_sp_fid_ops*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %2, align 8
  %6 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %6, i32 0, i32 2
  %8 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  store %struct.mlxsw_sp_fid_family* %8, %struct.mlxsw_sp_fid_family** %3, align 8
  %9 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %9, i32 0, i32 1
  %11 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %10, align 8
  store %struct.mlxsw_sp_fid_ops* %11, %struct.mlxsw_sp_fid_ops** %4, align 8
  %12 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  store %struct.mlxsw_sp* %14, %struct.mlxsw_sp** %5, align 8
  %15 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.mlxsw_sp_fid.0*)*, i32 (%struct.mlxsw_sp_fid.0*)** %16, align 8
  %18 = icmp ne i32 (%struct.mlxsw_sp_fid.0*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %1
  %26 = phi i1 [ true, %1 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %48

31:                                               ; preds = %25
  %32 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %4, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %34, i32 0, i32 0
  %36 = load i32 (%struct.mlxsw_sp_fid.0*)*, i32 (%struct.mlxsw_sp_fid.0*)** %35, align 8
  %37 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %38 = bitcast %struct.mlxsw_sp_fid* %37 to %struct.mlxsw_sp_fid.0*
  %39 = call i32 %36(%struct.mlxsw_sp_fid.0* %38)
  %40 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %44, i32 0, i32 1
  %46 = load i32, i32* @mlxsw_sp_fid_vni_ht_params, align 4
  %47 = call i32 @rhashtable_remove_fast(i32* %43, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %31, %30
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
