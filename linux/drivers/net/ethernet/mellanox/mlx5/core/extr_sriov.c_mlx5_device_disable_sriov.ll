; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_sriov.c_mlx5_device_disable_sriov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_sriov.c_mlx5_device_disable_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.mlx5_core_sriov }
%struct.mlx5_core_sriov = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"failed to disable VF %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"timeout reclaiming VFs pages\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*)* @mlx5_device_disable_sriov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_device_disable_sriov(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_core_sriov*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store %struct.mlx5_core_sriov* %9, %struct.mlx5_core_sriov** %3, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pci_num_vf(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %49, %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %16
  %20 = load %struct.mlx5_core_sriov*, %struct.mlx5_core_sriov** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_core_sriov, %struct.mlx5_core_sriov* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %49

30:                                               ; preds = %19
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @mlx5_core_disable_hca(%struct.mlx5_core_dev* %31, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %49

41:                                               ; preds = %30
  %42 = load %struct.mlx5_core_sriov*, %struct.mlx5_core_sriov** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5_core_sriov, %struct.mlx5_core_sriov* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %41, %37, %29
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %6, align 4
  br label %16

52:                                               ; preds = %16
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %54 = call i64 @MLX5_ESWITCH_MANAGER(%struct.mlx5_core_dev* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %58 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mlx5_eswitch_disable(i32 %60)
  br label %62

62:                                               ; preds = %56, %52
  %63 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %65 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i64 @mlx5_wait_for_pages(%struct.mlx5_core_dev* %63, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %71 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %62
  ret void
}

declare dso_local i32 @pci_num_vf(i32) #1

declare dso_local i32 @mlx5_core_disable_hca(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i64 @MLX5_ESWITCH_MANAGER(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eswitch_disable(i32) #1

declare dso_local i64 @mlx5_wait_for_pages(%struct.mlx5_core_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
