; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_tunnel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_tunnel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_nve* }
%struct.mlxsw_sp_nve = type { i32, i32, %struct.mlxsw_sp_nve_ops** }
%struct.mlxsw_sp_nve_ops = type { i32 (%struct.mlxsw_sp_nve.0*, %struct.mlxsw_sp_nve_config*)* }
%struct.mlxsw_sp_nve.0 = type opaque
%struct.mlxsw_sp_nve_config = type opaque
%struct.mlxsw_sp_nve_config.1 = type { i64 }

@MLXSW_SP_KVDL_ENTRY_TYPE_ADJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_config.1*)* @mlxsw_sp_nve_tunnel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nve_tunnel_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nve_config.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_nve_config.1*, align 8
  %6 = alloca %struct.mlxsw_sp_nve*, align 8
  %7 = alloca %struct.mlxsw_sp_nve_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_nve_config.1* %1, %struct.mlxsw_sp_nve_config.1** %5, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %9, i32 0, i32 0
  %11 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %10, align 8
  store %struct.mlxsw_sp_nve* %11, %struct.mlxsw_sp_nve** %6, align 8
  %12 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

18:                                               ; preds = %2
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %20 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_ADJ, align 4
  %21 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %21, i32 0, i32 1
  %23 = call i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp* %19, i32 %20, i32 1, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %55

27:                                               ; preds = %18
  %28 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %28, i32 0, i32 2
  %30 = load %struct.mlxsw_sp_nve_ops**, %struct.mlxsw_sp_nve_ops*** %29, align 8
  %31 = load %struct.mlxsw_sp_nve_config.1*, %struct.mlxsw_sp_nve_config.1** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_nve_config.1, %struct.mlxsw_sp_nve_config.1* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_nve_ops*, %struct.mlxsw_sp_nve_ops** %30, i64 %33
  %35 = load %struct.mlxsw_sp_nve_ops*, %struct.mlxsw_sp_nve_ops** %34, align 8
  store %struct.mlxsw_sp_nve_ops* %35, %struct.mlxsw_sp_nve_ops** %7, align 8
  %36 = load %struct.mlxsw_sp_nve_ops*, %struct.mlxsw_sp_nve_ops** %7, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_nve_ops, %struct.mlxsw_sp_nve_ops* %36, i32 0, i32 0
  %38 = load i32 (%struct.mlxsw_sp_nve.0*, %struct.mlxsw_sp_nve_config*)*, i32 (%struct.mlxsw_sp_nve.0*, %struct.mlxsw_sp_nve_config*)** %37, align 8
  %39 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %6, align 8
  %40 = bitcast %struct.mlxsw_sp_nve* %39 to %struct.mlxsw_sp_nve.0*
  %41 = load %struct.mlxsw_sp_nve_config.1*, %struct.mlxsw_sp_nve_config.1** %5, align 8
  %42 = bitcast %struct.mlxsw_sp_nve_config.1* %41 to %struct.mlxsw_sp_nve_config*
  %43 = call i32 %38(%struct.mlxsw_sp_nve.0* %40, %struct.mlxsw_sp_nve_config* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  br label %48

47:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %61

48:                                               ; preds = %46
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %50 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_ADJ, align 4
  %51 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %6, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mlxsw_sp_kvdl_free(%struct.mlxsw_sp* %49, i32 %50, i32 1, i32 %53)
  br label %55

55:                                               ; preds = %48, %26
  %56 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %6, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %47, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp*, i32, i32, i32*) #1

declare dso_local i32 @mlxsw_sp_kvdl_free(%struct.mlxsw_sp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
