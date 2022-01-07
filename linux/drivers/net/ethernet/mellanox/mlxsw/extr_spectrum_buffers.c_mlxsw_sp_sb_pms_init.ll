; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.mlxsw_sp_sb_pool_des* }
%struct.mlxsw_sp_sb_pool_des = type { i64 }
%struct.mlxsw_sp_sb_pm = type { i32, i32 }

@MLXSW_REG_SBXX_DIR_INGRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_sb_pm*, i32)* @mlxsw_sp_sb_pms_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_sb_pms_init(%struct.mlxsw_sp* %0, i32 %1, %struct.mlxsw_sp_sb_pm* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_sb_pm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp_sb_pm*, align 8
  %13 = alloca %struct.mlxsw_sp_sb_pool_des*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlxsw_sp_sb_pm* %2, %struct.mlxsw_sp_sb_pm** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %75, %4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %16
  %25 = load %struct.mlxsw_sp_sb_pm*, %struct.mlxsw_sp_sb_pm** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mlxsw_sp_sb_pm, %struct.mlxsw_sp_sb_pm* %25, i64 %27
  store %struct.mlxsw_sp_sb_pm* %28, %struct.mlxsw_sp_sb_pm** %12, align 8
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %33, i64 %35
  store %struct.mlxsw_sp_sb_pool_des* %36, %struct.mlxsw_sp_sb_pool_des** %13, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %24
  %40 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %13, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MLXSW_REG_SBXX_DIR_INGRESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %75

46:                                               ; preds = %39, %24
  %47 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %48 = load %struct.mlxsw_sp_sb_pm*, %struct.mlxsw_sp_sb_pm** %12, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_sb_pm, %struct.mlxsw_sp_sb_pm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp* %47, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load %struct.mlxsw_sp_sb_pm*, %struct.mlxsw_sp_sb_pm** %12, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_sb_pm, %struct.mlxsw_sp_sb_pm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @mlxsw_sp_sb_pool_is_static(%struct.mlxsw_sp* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp* %60, i32 %61)
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %59, %46
  %64 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @mlxsw_sp_sb_pm_write(%struct.mlxsw_sp* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %79

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %16

78:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %72
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp*, i32) #1

declare dso_local i64 @mlxsw_sp_sb_pool_is_static(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_sb_pm_write(%struct.mlxsw_sp*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
