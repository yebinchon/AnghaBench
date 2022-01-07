; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c___mlxsw_sp_sb_cms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c___mlxsw_sp_sb_cms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_sb_vals* }
%struct.mlxsw_sp_sb_vals = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_sb_cm = type { i64, i64, i64 }

@MLXSW_REG_SBXX_DIR_INGRESS = common dso_local global i32 0, align 4
@MLXSW_SP_SB_INFI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i32, %struct.mlxsw_sp_sb_cm*, i64)* @__mlxsw_sp_sb_cms_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp_sb_cms_init(%struct.mlxsw_sp* %0, i32 %1, i32 %2, %struct.mlxsw_sp_sb_cm* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_sb_cm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlxsw_sp_sb_vals*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlxsw_sp_sb_cm*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.mlxsw_sp_sb_cm* %3, %struct.mlxsw_sp_sb_cm** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %18, i32 0, i32 0
  %20 = load %struct.mlxsw_sp_sb_vals*, %struct.mlxsw_sp_sb_vals** %19, align 8
  store %struct.mlxsw_sp_sb_vals* %20, %struct.mlxsw_sp_sb_vals** %12, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %102, %5
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %11, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %105

26:                                               ; preds = %21
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MLXSW_REG_SBXX_DIR_INGRESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %102

34:                                               ; preds = %29, %26
  %35 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %10, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %35, i64 %37
  store %struct.mlxsw_sp_sb_cm* %38, %struct.mlxsw_sp_sb_cm** %15, align 8
  %39 = load %struct.mlxsw_sp_sb_vals*, %struct.mlxsw_sp_sb_vals** %12, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_sb_vals, %struct.mlxsw_sp_sb_vals* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %15, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  br label %102

54:                                               ; preds = %34
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %56 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %15, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp* %55, i64 %58)
  store i64 %59, i64* %16, align 8
  %60 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %15, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %17, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load i64, i64* @MLXSW_SP_SB_INFI, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i64, i64* %16, align 8
  %71 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %15, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @mlxsw_sp_sb_cm_write(%struct.mlxsw_sp* %67, i32 %68, i32 %69, i64 %70, i64 0, i32 1, i64 %73)
  store i32 %74, i32* %14, align 4
  br label %96

75:                                               ; preds = %54
  %76 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %77 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %15, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @mlxsw_sp_sb_pool_is_static(%struct.mlxsw_sp* %76, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %84 = load i64, i64* %17, align 8
  %85 = call i64 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp* %83, i64 %84)
  store i64 %85, i64* %17, align 8
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i64, i64* %16, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %15, align 8
  %93 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @mlxsw_sp_sb_cm_write(%struct.mlxsw_sp* %87, i32 %88, i32 %89, i64 %90, i64 %91, i32 0, i64 %94)
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %86, %66
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %6, align 4
  br label %106

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %53, %33
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %21

105:                                              ; preds = %21
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %99
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp*, i64) #1

declare dso_local i32 @mlxsw_sp_sb_cm_write(%struct.mlxsw_sp*, i32, i32, i64, i64, i32, i64) #1

declare dso_local i64 @mlxsw_sp_sb_pool_is_static(%struct.mlxsw_sp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
