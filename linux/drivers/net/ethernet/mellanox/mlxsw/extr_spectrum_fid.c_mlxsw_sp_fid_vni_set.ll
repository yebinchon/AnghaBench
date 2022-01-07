; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_vni_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_vni_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32, i32, i32, i32, i32, %struct.mlxsw_sp_fid_family* }
%struct.mlxsw_sp_fid_family = type { %struct.mlxsw_sp*, %struct.mlxsw_sp_fid_ops* }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_fid_ops = type { i32 (%struct.mlxsw_sp_fid.0*, i32)* }
%struct.mlxsw_sp_fid.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@mlxsw_sp_fid_vni_ht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_fid_vni_set(%struct.mlxsw_sp_fid* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_fid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %11 = alloca %struct.mlxsw_sp_fid_ops*, align 8
  %12 = alloca %struct.mlxsw_sp*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %14, i32 0, i32 5
  %16 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %15, align 8
  store %struct.mlxsw_sp_fid_family* %16, %struct.mlxsw_sp_fid_family** %10, align 8
  %17 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %10, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %17, i32 0, i32 1
  %19 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %18, align 8
  store %struct.mlxsw_sp_fid_ops* %19, %struct.mlxsw_sp_fid_ops** %11, align 8
  %20 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %10, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %20, i32 0, i32 0
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %21, align 8
  store %struct.mlxsw_sp* %22, %struct.mlxsw_sp** %12, align 8
  %23 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %11, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.mlxsw_sp_fid.0*, i32)*, i32 (%struct.mlxsw_sp_fid.0*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.mlxsw_sp_fid.0*, i32)* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %4
  %33 = phi i1 [ true, %4 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %86

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %54, i32 0, i32 3
  %56 = load i32, i32* @mlxsw_sp_fid_vni_ht_params, align 4
  %57 = call i32 @rhashtable_lookup_insert_fast(i32* %53, i32* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %86

62:                                               ; preds = %40
  %63 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %11, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %63, i32 0, i32 0
  %65 = load i32 (%struct.mlxsw_sp_fid.0*, i32)*, i32 (%struct.mlxsw_sp_fid.0*, i32)** %64, align 8
  %66 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %67 = bitcast %struct.mlxsw_sp_fid* %66 to %struct.mlxsw_sp_fid.0*
  %68 = load i32, i32* %8, align 4
  %69 = call i32 %65(%struct.mlxsw_sp_fid.0* %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %76

73:                                               ; preds = %62
  %74 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  store i32 0, i32* %5, align 4
  br label %86

76:                                               ; preds = %72
  %77 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %81, i32 0, i32 3
  %83 = load i32, i32* @mlxsw_sp_fid_vni_ht_params, align 4
  %84 = call i32 @rhashtable_remove_fast(i32* %80, i32* %82, i32 %83)
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %76, %73, %60, %37
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rhashtable_lookup_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
