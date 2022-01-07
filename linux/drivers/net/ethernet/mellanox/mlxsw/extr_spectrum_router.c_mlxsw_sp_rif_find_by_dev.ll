; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_find_by_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_find_by_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { %struct.net_device* }
%struct.mlxsw_sp = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_rif** }
%struct.net_device = type { i32 }

@MAX_RIFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_rif*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %51, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAX_RIFS, align 4
  %13 = call i32 @MLXSW_CORE_RES_GET(i32 %11, i32 %12)
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %7
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mlxsw_sp_rif**, %struct.mlxsw_sp_rif*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %20, i64 %22
  %24 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %23, align 8
  %25 = icmp ne %struct.mlxsw_sp_rif* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %15
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.mlxsw_sp_rif**, %struct.mlxsw_sp_rif*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %31, i64 %33
  %35 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %34, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %35, i32 0, i32 0
  %37 = load %struct.net_device*, %struct.net_device** %36, align 8
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = icmp eq %struct.net_device* %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.mlxsw_sp_rif**, %struct.mlxsw_sp_rif*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %45, i64 %47
  %49 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %48, align 8
  store %struct.mlxsw_sp_rif* %49, %struct.mlxsw_sp_rif** %3, align 8
  br label %55

50:                                               ; preds = %26, %15
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %7

54:                                               ; preds = %7
  store %struct.mlxsw_sp_rif* null, %struct.mlxsw_sp_rif** %3, align 8
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  ret %struct.mlxsw_sp_rif* %56
}

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
