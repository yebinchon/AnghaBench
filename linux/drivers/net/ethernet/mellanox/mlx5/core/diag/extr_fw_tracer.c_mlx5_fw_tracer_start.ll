; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fw_tracer = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"FWTracer: Ownership was not granted %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"FWTracer: Failed to set tracer configuration %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"FWTracer: Failed to enable tracer %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"FWTracer: Ownership granted and active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fw_tracer*)* @mlx5_fw_tracer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fw_tracer_start(%struct.mlx5_fw_tracer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_fw_tracer*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_fw_tracer* %0, %struct.mlx5_fw_tracer** %3, align 8
  %6 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %6, i32 0, i32 0
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_core_dev* %8, %struct.mlx5_core_dev** %4, align 8
  %9 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %10 = call i32 @mlx5_fw_tracer_ownership_acquire(%struct.mlx5_fw_tracer* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %19 = call i32 @mlx5_fw_tracer_set_mtrc_conf(%struct.mlx5_fw_tracer* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %38

26:                                               ; preds = %17
  %27 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %28 = call i32 @mlx5_fw_tracer_set_mtrc_ctrl(%struct.mlx5_fw_tracer* %27, i32 1, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %38

35:                                               ; preds = %26
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %37 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

38:                                               ; preds = %31, %22
  %39 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %40 = call i32 @mlx5_fw_tracer_ownership_release(%struct.mlx5_fw_tracer* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %35, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mlx5_fw_tracer_ownership_acquire(%struct.mlx5_fw_tracer*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @mlx5_fw_tracer_set_mtrc_conf(%struct.mlx5_fw_tracer*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_fw_tracer_set_mtrc_ctrl(%struct.mlx5_fw_tracer*, i32, i32) #1

declare dso_local i32 @mlx5_fw_tracer_ownership_release(%struct.mlx5_fw_tracer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
