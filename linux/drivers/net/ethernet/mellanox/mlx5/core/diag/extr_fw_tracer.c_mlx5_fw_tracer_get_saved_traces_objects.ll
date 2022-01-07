; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_get_saved_traces_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_get_saved_traces_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fw_tracer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, %struct.mlx5_fw_trace_data* }
%struct.mlx5_fw_trace_data = type { i64 }
%struct.devlink_fmsg = type { i32 }

@ENOMSG = common dso_local global i32 0, align 4
@SAVED_TRACES_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dump fw traces\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fw_tracer_get_saved_traces_objects(%struct.mlx5_fw_tracer* %0, %struct.devlink_fmsg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_fw_tracer*, align 8
  %5 = alloca %struct.devlink_fmsg*, align 8
  %6 = alloca %struct.mlx5_fw_trace_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_fw_tracer* %0, %struct.mlx5_fw_tracer** %4, align 8
  store %struct.devlink_fmsg* %1, %struct.devlink_fmsg** %5, align 8
  %12 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %14, align 8
  store %struct.mlx5_fw_trace_data* %15, %struct.mlx5_fw_trace_data** %6, align 8
  %16 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %16, i64 0
  %18 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMSG, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %85

24:                                               ; preds = %2
  %25 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %33, i64 %34
  %36 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %8, align 8
  br label %42

41:                                               ; preds = %24
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i64, i64* %10, align 8
  %44 = sub i64 %43, 1
  %45 = load i32, i32* @SAVED_TRACES_NUM, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = and i64 %44, %47
  store i64 %48, i64* %9, align 8
  %49 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %50 = call i32 @devlink_fmsg_arr_pair_nest_start(%struct.devlink_fmsg* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %79

54:                                               ; preds = %42
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %69, %54
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %62 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %62, i64 %63
  %65 = call i32 @mlx5_devlink_fmsg_fill_trace(%struct.devlink_fmsg* %61, %struct.mlx5_fw_trace_data* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %79

69:                                               ; preds = %60
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  %72 = load i32, i32* @SAVED_TRACES_NUM, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = and i64 %71, %74
  store i64 %75, i64* %7, align 8
  br label %56

76:                                               ; preds = %56
  %77 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %78 = call i32 @devlink_fmsg_arr_pair_nest_end(%struct.devlink_fmsg* %77)
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %68, %53
  %80 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %81 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @devlink_fmsg_arr_pair_nest_start(%struct.devlink_fmsg*, i8*) #1

declare dso_local i32 @mlx5_devlink_fmsg_fill_trace(%struct.devlink_fmsg*, %struct.mlx5_fw_trace_data*) #1

declare dso_local i32 @devlink_fmsg_arr_pair_nest_end(%struct.devlink_fmsg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
