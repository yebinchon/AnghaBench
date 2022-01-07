; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i64, i64, i32, %struct.mlxsw_sp_fid*, %struct.mlxsw_sp*, %struct.mlxsw_sp_rif_ops* }
%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32**, %struct.mlxsw_sp_vr* }
%struct.mlxsw_sp_vr = type { i32, i32* }
%struct.mlxsw_sp_rif_ops = type { i32 (%struct.mlxsw_sp_rif.0*)* }
%struct.mlxsw_sp_rif.0 = type opaque

@MLXSW_SP_L3_PROTO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_rif*)* @mlxsw_sp_rif_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_rif_destroy(%struct.mlxsw_sp_rif* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_rif*, align 8
  %3 = alloca %struct.mlxsw_sp_rif_ops*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_fid*, align 8
  %6 = alloca %struct.mlxsw_sp_vr*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %2, align 8
  %8 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %8, i32 0, i32 5
  %10 = load %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %9, align 8
  store %struct.mlxsw_sp_rif_ops* %10, %struct.mlxsw_sp_rif_ops** %3, align 8
  %11 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %11, i32 0, i32 4
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  store %struct.mlxsw_sp* %13, %struct.mlxsw_sp** %4, align 8
  %14 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %14, i32 0, i32 3
  %16 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %15, align 8
  store %struct.mlxsw_sp_fid* %16, %struct.mlxsw_sp_fid** %5, align 8
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %18 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %19 = call i32 @mlxsw_sp_router_rif_gone_sync(%struct.mlxsw_sp* %17, %struct.mlxsw_sp_rif* %18)
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %23, align 8
  %25 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %24, i64 %27
  store %struct.mlxsw_sp_vr* %28, %struct.mlxsw_sp_vr** %6, align 8
  %29 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %30 = call i32 @mlxsw_sp_rif_counters_free(%struct.mlxsw_sp_rif* %29)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %45, %1
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MLXSW_SP_L3_PROTO_MAX, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %6, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %44 = call i32 @mlxsw_sp_mr_rif_del(i32 %42, %struct.mlxsw_sp_rif* %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %31

48:                                               ; preds = %31
  %49 = load %struct.mlxsw_sp_rif_ops*, %struct.mlxsw_sp_rif_ops** %3, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_rif_ops, %struct.mlxsw_sp_rif_ops* %49, i32 0, i32 0
  %51 = load i32 (%struct.mlxsw_sp_rif.0*)*, i32 (%struct.mlxsw_sp_rif.0*)** %50, align 8
  %52 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %53 = bitcast %struct.mlxsw_sp_rif* %52 to %struct.mlxsw_sp_rif.0*
  %54 = call i32 %51(%struct.mlxsw_sp_rif.0* %53)
  %55 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %5, align 8
  %56 = icmp ne %struct.mlxsw_sp_fid* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %5, align 8
  %59 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %58)
  br label %60

60:                                               ; preds = %57, %48
  %61 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32*, i32** %65, i64 %68
  store i32* null, i32** %69, align 8
  %70 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_put(i32 %72)
  %74 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %75 = call i32 @kfree(%struct.mlxsw_sp_rif* %74)
  %76 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %6, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %81 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %6, align 8
  %82 = call i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp* %80, %struct.mlxsw_sp_vr* %81)
  ret void
}

declare dso_local i32 @mlxsw_sp_router_rif_gone_sync(%struct.mlxsw_sp*, %struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_rif_counters_free(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_mr_rif_del(i32, %struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
