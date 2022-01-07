; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_fw_fatal_reporter_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_fw_fatal_reporter_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32 }
%struct.devlink_fmsg = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mlx5_fw_reporter_ctx = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"crdump_data\00", align 1
@MLX5_CR_DUMP_CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_health_reporter*, %struct.devlink_fmsg*, i8*)* @mlx5_fw_fatal_reporter_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fw_fatal_reporter_dump(%struct.devlink_health_reporter* %0, %struct.devlink_fmsg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink_health_reporter*, align 8
  %6 = alloca %struct.devlink_fmsg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_fw_reporter_ctx*, align 8
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %5, align 8
  store %struct.devlink_fmsg* %1, %struct.devlink_fmsg** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %16 = call %struct.mlx5_core_dev* @devlink_health_reporter_priv(%struct.devlink_health_reporter* %15)
  store %struct.mlx5_core_dev* %16, %struct.mlx5_core_dev** %8, align 8
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %23 = call i32 @mlx5_core_is_pf(%struct.mlx5_core_dev* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %103

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i64* @kvmalloc(i64 %29, i32 %30)
  store i64* %31, i64** %10, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %103

37:                                               ; preds = %28
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = call i32 @mlx5_crdump_collect(%struct.mlx5_core_dev* %38, i64* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %99

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = bitcast i8* %48 to %struct.mlx5_fw_reporter_ctx*
  store %struct.mlx5_fw_reporter_ctx* %49, %struct.mlx5_fw_reporter_ctx** %14, align 8
  %50 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %6, align 8
  %51 = load %struct.mlx5_fw_reporter_ctx*, %struct.mlx5_fw_reporter_ctx** %14, align 8
  %52 = call i32 @mlx5_fw_reporter_ctx_pairs_put(%struct.devlink_fmsg* %50, %struct.mlx5_fw_reporter_ctx* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %99

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %44
  %58 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %6, align 8
  %59 = call i32 @devlink_fmsg_arr_pair_nest_start(%struct.devlink_fmsg* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %99

63:                                               ; preds = %57
  store i64 0, i64* %12, align 8
  br label %64

64:                                               ; preds = %92, %63
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %64
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %12, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load i64, i64* @MLX5_CR_DUMP_CHUNK_SIZE, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %12, align 8
  %77 = sub nsw i64 %75, %76
  store i64 %77, i64* %11, align 8
  br label %80

78:                                               ; preds = %68
  %79 = load i64, i64* @MLX5_CR_DUMP_CHUNK_SIZE, align 8
  store i64 %79, i64* %11, align 8
  br label %80

80:                                               ; preds = %78, %74
  %81 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %6, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = bitcast i64* %82 to i8*
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @devlink_fmsg_binary_put(%struct.devlink_fmsg* %81, i8* %85, i64 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %99

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %12, align 8
  br label %64

96:                                               ; preds = %64
  %97 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %6, align 8
  %98 = call i32 @devlink_fmsg_arr_pair_nest_end(%struct.devlink_fmsg* %97)
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %96, %90, %62, %55, %43
  %100 = load i64*, i64** %10, align 8
  %101 = call i32 @kvfree(i64* %100)
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %34, %25
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.mlx5_core_dev* @devlink_health_reporter_priv(%struct.devlink_health_reporter*) #1

declare dso_local i32 @mlx5_core_is_pf(%struct.mlx5_core_dev*) #1

declare dso_local i64* @kvmalloc(i64, i32) #1

declare dso_local i32 @mlx5_crdump_collect(%struct.mlx5_core_dev*, i64*) #1

declare dso_local i32 @mlx5_fw_reporter_ctx_pairs_put(%struct.devlink_fmsg*, %struct.mlx5_fw_reporter_ctx*) #1

declare dso_local i32 @devlink_fmsg_arr_pair_nest_start(%struct.devlink_fmsg*, i8*) #1

declare dso_local i32 @devlink_fmsg_binary_put(%struct.devlink_fmsg*, i8*, i64) #1

declare dso_local i32 @devlink_fmsg_arr_pair_nest_end(%struct.devlink_fmsg*) #1

declare dso_local i32 @kvfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
