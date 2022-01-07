; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_devlink_fmsg_fill_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_devlink_fmsg_fill_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_fmsg = type { i32 }
%struct.mlx5_fw_trace_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lost\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"event_id\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_fmsg*, %struct.mlx5_fw_trace_data*)* @mlx5_devlink_fmsg_fill_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_devlink_fmsg_fill_trace(%struct.devlink_fmsg* %0, %struct.mlx5_fw_trace_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink_fmsg*, align 8
  %5 = alloca %struct.mlx5_fw_trace_data*, align 8
  %6 = alloca i32, align 4
  store %struct.devlink_fmsg* %0, %struct.devlink_fmsg** %4, align 8
  store %struct.mlx5_fw_trace_data* %1, %struct.mlx5_fw_trace_data** %5, align 8
  %7 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %8 = call i32 @devlink_fmsg_obj_nest_start(%struct.devlink_fmsg* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %15 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @devlink_fmsg_u64_pair_put(%struct.devlink_fmsg* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %61

23:                                               ; preds = %13
  %24 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %25 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @devlink_fmsg_bool_pair_put(%struct.devlink_fmsg* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %61

33:                                               ; preds = %23
  %34 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %35 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @devlink_fmsg_u8_pair_put(%struct.devlink_fmsg* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %61

43:                                               ; preds = %33
  %44 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %45 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @devlink_fmsg_string_pair_put(%struct.devlink_fmsg* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %61

53:                                               ; preds = %43
  %54 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %55 = call i32 @devlink_fmsg_obj_nest_end(%struct.devlink_fmsg* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %58, %51, %41, %31, %21, %11
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @devlink_fmsg_obj_nest_start(%struct.devlink_fmsg*) #1

declare dso_local i32 @devlink_fmsg_u64_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @devlink_fmsg_bool_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @devlink_fmsg_u8_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @devlink_fmsg_string_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @devlink_fmsg_obj_nest_end(%struct.devlink_fmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
