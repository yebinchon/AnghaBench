; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_save_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_save_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fw_tracer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, %struct.mlx5_fw_trace_data* }
%struct.mlx5_fw_trace_data = type { i32, i32, i32, i32 }

@TRACE_STR_MSG = common dso_local global i32 0, align 4
@SAVED_TRACES_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fw_tracer*, i32, i32, i32, i8*)* @mlx5_fw_tracer_save_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fw_tracer_save_trace(%struct.mlx5_fw_tracer* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.mlx5_fw_tracer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mlx5_fw_trace_data*, align 8
  store %struct.mlx5_fw_tracer* %0, %struct.mlx5_fw_tracer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %18, align 8
  %20 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %19, i64 %23
  store %struct.mlx5_fw_trace_data* %24, %struct.mlx5_fw_trace_data** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %11, align 8
  %27 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %11, align 8
  %30 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %11, align 8
  %33 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mlx5_fw_trace_data*, %struct.mlx5_fw_trace_data** %11, align 8
  %35 = getelementptr inbounds %struct.mlx5_fw_trace_data, %struct.mlx5_fw_trace_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* @TRACE_STR_MSG, align 4
  %39 = call i32 @strscpy_pad(i32 %36, i8* %37, i32 %38)
  %40 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  %45 = load i32, i32* @SAVED_TRACES_NUM, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = and i64 %44, %47
  %49 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %6, align 8
  %53 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strscpy_pad(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
