; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_sriov.c_mlx5_device_enable_sriov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_sriov.c_mlx5_device_enable_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.mlx5_core_sriov }
%struct.mlx5_core_sriov = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MLX5_ESWITCH_LEGACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to enable eswitch SRIOV (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to enable VF %d (%d)\0A\00", align 1
@port_type = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_IB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to restore VF %d settings, err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"successfully enabled VF* %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32)* @mlx5_device_enable_sriov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_device_enable_sriov(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_sriov*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store %struct.mlx5_core_sriov* %11, %struct.mlx5_core_sriov** %6, align 8
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %13 = call i32 @MLX5_ESWITCH_MANAGER(%struct.mlx5_core_dev* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @mlx5_eswitch_update_num_of_vfs(i32 %20, i32 %21)
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MLX5_ESWITCH_LEGACY, align 4
  %28 = call i32 @mlx5_eswitch_enable(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %87

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %15
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %83, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %38
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @mlx5_core_enable_hca(%struct.mlx5_core_dev* %43, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  br label %83

54:                                               ; preds = %42
  %55 = load %struct.mlx5_core_sriov*, %struct.mlx5_core_sriov** %6, align 8
  %56 = getelementptr inbounds %struct.mlx5_core_sriov, %struct.mlx5_core_sriov* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %63 = load i32, i32* @port_type, align 4
  %64 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %62, i32 %63)
  %65 = load i64, i64* @MLX5_CAP_PORT_TYPE_IB, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %54
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @sriov_restore_guids(%struct.mlx5_core_dev* %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  br label %83

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %54
  %80 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %73, %49
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %38

86:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %31
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @MLX5_ESWITCH_MANAGER(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eswitch_update_num_of_vfs(i32, i32) #1

declare dso_local i32 @mlx5_eswitch_enable(i32, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, ...) #1

declare dso_local i32 @mlx5_core_enable_hca(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @sriov_restore_guids(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
