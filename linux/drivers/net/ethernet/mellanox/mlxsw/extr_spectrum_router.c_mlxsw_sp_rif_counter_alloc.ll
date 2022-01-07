; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_counter_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_counter_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLXSW_SP_COUNTER_SUB_POOL_RIF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_rif_counter_alloc(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_rif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_rif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_rif* %1, %struct.mlxsw_sp_rif** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32* @mlxsw_sp_rif_p_counter_get(%struct.mlxsw_sp_rif* %10, i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %20 = load i32, i32* @MLXSW_SP_COUNTER_SUB_POOL_RIF, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @mlxsw_sp_counter_alloc(%struct.mlxsw_sp* %19, i32 %20, i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %59

27:                                               ; preds = %18
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlxsw_sp_rif_counter_clear(%struct.mlxsw_sp* %28, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %52

35:                                               ; preds = %27
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %37 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %6, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mlxsw_sp_rif_counter_edit(%struct.mlxsw_sp* %36, i32 %39, i32 %41, i32 1, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %51

47:                                               ; preds = %35
  %48 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mlxsw_sp_rif_counter_valid_set(%struct.mlxsw_sp_rif* %48, i32 %49, i32 1)
  store i32 0, i32* %4, align 4
  br label %59

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %54 = load i32, i32* @MLXSW_SP_COUNTER_SUB_POOL_RIF, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mlxsw_sp_counter_free(%struct.mlxsw_sp* %53, i32 %54, i32 %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %52, %47, %25, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @mlxsw_sp_rif_p_counter_get(%struct.mlxsw_sp_rif*, i32) #1

declare dso_local i32 @mlxsw_sp_counter_alloc(%struct.mlxsw_sp*, i32, i32*) #1

declare dso_local i32 @mlxsw_sp_rif_counter_clear(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_rif_counter_edit(%struct.mlxsw_sp*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_rif_counter_valid_set(%struct.mlxsw_sp_rif*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_counter_free(%struct.mlxsw_sp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
