; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_fw_reporter_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_fw_reporter_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32 }
%struct.devlink_fmsg = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_fw_reporter_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_health_reporter*, %struct.devlink_fmsg*, i8*)* @mlx5_fw_reporter_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fw_reporter_dump(%struct.devlink_health_reporter* %0, %struct.devlink_fmsg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink_health_reporter*, align 8
  %6 = alloca %struct.devlink_fmsg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_fw_reporter_ctx*, align 8
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %5, align 8
  store %struct.devlink_fmsg* %1, %struct.devlink_fmsg** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %12 = call %struct.mlx5_core_dev* @devlink_health_reporter_priv(%struct.devlink_health_reporter* %11)
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %8, align 8
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %14 = call i32 @mlx5_fw_tracer_trigger_core_dump_general(%struct.mlx5_core_dev* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.mlx5_fw_reporter_ctx*
  store %struct.mlx5_fw_reporter_ctx* %24, %struct.mlx5_fw_reporter_ctx** %10, align 8
  %25 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %6, align 8
  %26 = load %struct.mlx5_fw_reporter_ctx*, %struct.mlx5_fw_reporter_ctx** %10, align 8
  %27 = call i32 @mlx5_fw_reporter_ctx_pairs_put(%struct.devlink_fmsg* %25, %struct.mlx5_fw_reporter_ctx* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %47

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %35 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %6, align 8
  %36 = call i32 @mlx5_fw_reporter_heath_buffer_data_put(%struct.mlx5_core_dev* %34, %struct.devlink_fmsg* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %33
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %6, align 8
  %46 = call i32 @mlx5_fw_tracer_get_saved_traces_objects(i32 %44, %struct.devlink_fmsg* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %41, %39, %30, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.mlx5_core_dev* @devlink_health_reporter_priv(%struct.devlink_health_reporter*) #1

declare dso_local i32 @mlx5_fw_tracer_trigger_core_dump_general(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_fw_reporter_ctx_pairs_put(%struct.devlink_fmsg*, %struct.mlx5_fw_reporter_ctx*) #1

declare dso_local i32 @mlx5_fw_reporter_heath_buffer_data_put(%struct.mlx5_core_dev*, %struct.devlink_fmsg*) #1

declare dso_local i32 @mlx5_fw_tracer_get_saved_traces_objects(i32, %struct.devlink_fmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
