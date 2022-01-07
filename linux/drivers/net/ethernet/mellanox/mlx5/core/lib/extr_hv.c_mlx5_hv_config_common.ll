; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv.c_mlx5_hv_config_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv.c_mlx5_hv_config_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@HV_CONFIG_BLOCK_SIZE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Failed to %s hv config, err = %d, len = %d, offset = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i8*, i32, i32, i32)* @mlx5_hv_config_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_hv_config_common(%struct.mlx5_core_dev* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @HV_CONFIG_BLOCK_SIZE_MAX, align 4
  %19 = srem i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @HV_CONFIG_BLOCK_SIZE_MAX, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %79

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @HV_CONFIG_BLOCK_SIZE_MAX, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @HV_CONFIG_BLOCK_SIZE_MAX, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @hyperv_read_cfg_blk(i32 %37, i8* %38, i32 %39, i32 %40, i32* %13)
  br label %50

42:                                               ; preds = %28
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %44 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* @HV_CONFIG_BLOCK_SIZE_MAX, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @hyperv_write_cfg_blk(i32 %45, i8* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %42, %34
  %51 = phi i32 [ %41, %34 ], [ %49, %42 ]
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %57, %54, %50
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %68, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %6, align 4
  br label %79

78:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %67, %25
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @hyperv_read_cfg_blk(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @hyperv_write_cfg_blk(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
