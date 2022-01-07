; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_health_try_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_health_try_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"handling bad device here\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@MLX5_RECOVERY_WAIT_MSECS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"health recovery flow aborted, PCI reads still not working\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"starting health recovery flow\0A\00", align 1
@MLX5_INTERFACE_STATE_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"health recovery failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @mlx5_health_try_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_health_try_recover(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = call i32 @mlx5_handle_bad_state(%struct.mlx5_core_dev* %7)
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* @MLX5_RECOVERY_WAIT_MSECS, align 4
  %11 = call i64 @msecs_to_jiffies(i32 %10)
  %12 = add i64 %9, %11
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %27, %1
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %15 = call i64 @sensor_pci_not_working(%struct.mlx5_core_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @time_after(i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %24 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %17
  %28 = call i32 @msleep(i32 100)
  br label %13

29:                                               ; preds = %13
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %31 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = call i32 @mlx5_recover_device(%struct.mlx5_core_dev* %32)
  %34 = load i32, i32* @MLX5_INTERFACE_STATE_UP, align 4
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %35, i32 0, i32 0
  %37 = call i32 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %41 = call i64 @check_fatal_sensors(%struct.mlx5_core_dev* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %29
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %45 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %43, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_handle_bad_state(%struct.mlx5_core_dev*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @sensor_pci_not_working(%struct.mlx5_core_dev*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mlx5_recover_device(%struct.mlx5_core_dev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @check_fatal_sensors(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
