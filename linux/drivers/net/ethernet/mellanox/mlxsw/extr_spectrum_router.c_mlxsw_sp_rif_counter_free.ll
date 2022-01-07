; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_counter_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_counter_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }

@MLXSW_SP_COUNTER_SUB_POOL_RIF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_rif_counter_free(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_rif* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_rif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_rif* %1, %struct.mlxsw_sp_rif** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @mlxsw_sp_rif_counter_valid_get(%struct.mlxsw_sp_rif* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %41

13:                                               ; preds = %3
  %14 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32* @mlxsw_sp_rif_p_counter_get(%struct.mlxsw_sp_rif* %14, i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %41

24:                                               ; preds = %13
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %26 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @mlxsw_sp_rif_counter_edit(%struct.mlxsw_sp* %25, i32 %28, i32 %30, i32 0, i32 %31)
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %34 = load i32, i32* @MLXSW_SP_COUNTER_SUB_POOL_RIF, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlxsw_sp_counter_free(%struct.mlxsw_sp* %33, i32 %34, i32 %36)
  %38 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @mlxsw_sp_rif_counter_valid_set(%struct.mlxsw_sp_rif* %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %24, %23, %12
  ret void
}

declare dso_local i32 @mlxsw_sp_rif_counter_valid_get(%struct.mlxsw_sp_rif*, i32) #1

declare dso_local i32* @mlxsw_sp_rif_p_counter_get(%struct.mlxsw_sp_rif*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_rif_counter_edit(%struct.mlxsw_sp*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_counter_free(%struct.mlxsw_sp*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_rif_counter_valid_set(%struct.mlxsw_sp_rif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
