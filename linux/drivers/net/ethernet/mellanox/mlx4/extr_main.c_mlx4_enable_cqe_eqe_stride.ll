; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_enable_cqe_eqe_stride.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_enable_cqe_eqe_stride.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.mlx4_caps }
%struct.mlx4_caps = type { i32, i32, i32 }

@MLX4_DEV_CAP_FLAG2_EQE_STRIDE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_CQE_STRIDE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_64B_EQE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_64B_CQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Enabling CQE stride cacheLine supported\0A\00", align 1
@MLX4_FUNC_CAP_EQE_CQE_STRIDE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Disabling CQE stride, cacheLine size unsupported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*)* @mlx4_enable_cqe_eqe_stride to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_enable_cqe_eqe_stride(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_caps*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %4 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %4, i32 0, i32 0
  store %struct.mlx4_caps* %5, %struct.mlx4_caps** %3, align 8
  %6 = load %struct.mlx4_caps*, %struct.mlx4_caps** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MLX4_DEV_CAP_FLAG2_EQE_STRIDE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.mlx4_caps*, %struct.mlx4_caps** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MLX4_DEV_CAP_FLAG2_CQE_STRIDE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %1
  br label %100

20:                                               ; preds = %12
  %21 = load %struct.mlx4_caps*, %struct.mlx4_caps** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MLX4_DEV_CAP_FLAG_64B_EQE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.mlx4_caps*, %struct.mlx4_caps** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MLX4_DEV_CAP_FLAG_64B_CQE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %27, %20
  %35 = load i32, i32* @MLX4_DEV_CAP_FLAG2_CQE_STRIDE, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.mlx4_caps*, %struct.mlx4_caps** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @MLX4_DEV_CAP_FLAG2_EQE_STRIDE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.mlx4_caps*, %struct.mlx4_caps** %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %100

47:                                               ; preds = %27
  %48 = call i32 (...) @cache_line_size()
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = call i32 (...) @cache_line_size()
  %52 = icmp eq i32 %51, 256
  br i1 %52, label %53, label %78

53:                                               ; preds = %50, %47
  %54 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %55 = call i32 @mlx4_dbg(%struct.mlx4_dev* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @MLX4_DEV_CAP_FLAG_64B_CQE, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.mlx4_caps*, %struct.mlx4_caps** %3, align 8
  %59 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @MLX4_DEV_CAP_FLAG_64B_EQE, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.mlx4_caps*, %struct.mlx4_caps** %3, align 8
  %65 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %69 = call i64 @mlx4_is_master(%struct.mlx4_dev* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %53
  %72 = load i32, i32* @MLX4_FUNC_CAP_EQE_CQE_STRIDE, align 4
  %73 = load %struct.mlx4_caps*, %struct.mlx4_caps** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %53
  br label %100

78:                                               ; preds = %50
  %79 = call i32 (...) @cache_line_size()
  %80 = icmp ne i32 %79, 32
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = call i32 (...) @cache_line_size()
  %83 = icmp ne i32 %82, 64
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %86 = call i32 @mlx4_dbg(%struct.mlx4_dev* %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %81, %78
  %88 = load i32, i32* @MLX4_DEV_CAP_FLAG2_CQE_STRIDE, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.mlx4_caps*, %struct.mlx4_caps** %3, align 8
  %91 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @MLX4_DEV_CAP_FLAG2_EQE_STRIDE, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.mlx4_caps*, %struct.mlx4_caps** %3, align 8
  %97 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %19, %34, %87, %77
  ret void
}

declare dso_local i32 @cache_line_size(...) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
