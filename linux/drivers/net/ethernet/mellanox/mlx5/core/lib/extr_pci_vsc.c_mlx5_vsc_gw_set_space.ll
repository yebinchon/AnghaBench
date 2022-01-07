; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_pci_vsc.c_mlx5_vsc_gw_set_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_pci_vsc.c_mlx5_vsc_gw_set_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VSC_CTRL_OFFSET = common dso_local global i32 0, align 4
@VSC_SPACE_BIT_OFFS = common dso_local global i32 0, align 4
@VSC_SPACE_BIT_LEN = common dso_local global i32 0, align 4
@VSC_STATUS_BIT_OFFS = common dso_local global i32 0, align 4
@VSC_STATUS_BIT_LEN = common dso_local global i32 0, align 4
@VSC_SIZE_VLD_BIT_OFFS = common dso_local global i32 0, align 4
@VSC_SIZE_VLD_BIT_LEN = common dso_local global i32 0, align 4
@VSC_ADDR_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get max space size\0A\00", align 1
@VSC_ADDR_BIT_OFFS = common dso_local global i32 0, align 4
@VSC_ADDR_BIT_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_vsc_gw_set_space(%struct.mlx5_core_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %11 = call i32 @mlx5_vsc_accessible(%struct.mlx5_core_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %84

16:                                               ; preds = %3
  %17 = load i64*, i64** %7, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64*, i64** %7, align 8
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %23 = load i32, i32* @VSC_CTRL_OFFSET, align 4
  %24 = call i32 @vsc_read(%struct.mlx5_core_dev* %22, i32 %23, i64* %9)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %82

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @VSC_SPACE_BIT_OFFS, align 4
  %32 = load i32, i32* @VSC_SPACE_BIT_LEN, align 4
  %33 = call i64 @MLX5_MERGE(i64 %29, i32 %30, i32 %31, i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %35 = load i32, i32* @VSC_CTRL_OFFSET, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @vsc_write(%struct.mlx5_core_dev* %34, i32 %35, i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %82

41:                                               ; preds = %28
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %43 = load i32, i32* @VSC_CTRL_OFFSET, align 4
  %44 = call i32 @vsc_read(%struct.mlx5_core_dev* %42, i32 %43, i64* %9)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %82

48:                                               ; preds = %41
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* @VSC_STATUS_BIT_OFFS, align 4
  %51 = load i32, i32* @VSC_STATUS_BIT_LEN, align 4
  %52 = call i64 @MLX5_EXTRACT(i64 %49, i32 %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %84

57:                                               ; preds = %48
  %58 = load i64*, i64** %7, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* @VSC_SIZE_VLD_BIT_OFFS, align 4
  %63 = load i32, i32* @VSC_SIZE_VLD_BIT_LEN, align 4
  %64 = call i64 @MLX5_EXTRACT(i64 %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %68 = load i32, i32* @VSC_ADDR_OFFSET, align 4
  %69 = call i32 @vsc_read(%struct.mlx5_core_dev* %67, i32 %68, i64* %9)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %74 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %82

75:                                               ; preds = %66
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* @VSC_ADDR_BIT_OFFS, align 4
  %78 = load i32, i32* @VSC_ADDR_BIT_LEN, align 4
  %79 = call i64 @MLX5_EXTRACT(i64 %76, i32 %77, i32 %78)
  %80 = load i64*, i64** %7, align 8
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %60, %57
  store i32 0, i32* %4, align 4
  br label %84

82:                                               ; preds = %72, %47, %40, %27
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %81, %54, %13
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @mlx5_vsc_accessible(%struct.mlx5_core_dev*) #1

declare dso_local i32 @vsc_read(%struct.mlx5_core_dev*, i32, i64*) #1

declare dso_local i64 @MLX5_MERGE(i64, i32, i32, i32) #1

declare dso_local i32 @vsc_write(%struct.mlx5_core_dev*, i32, i64) #1

declare dso_local i64 @MLX5_EXTRACT(i64, i32, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
