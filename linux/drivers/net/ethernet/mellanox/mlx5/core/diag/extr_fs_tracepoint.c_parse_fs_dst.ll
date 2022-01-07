; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fs_tracepoint.c_parse_fs_dst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fs_tracepoint.c_parse_fs_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.mlx5_flow_destination = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"vport=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ft=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ft_num=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tir=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"counter_id=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"port\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_fs_dst(%struct.trace_seq* %0, %struct.mlx5_flow_destination* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca %struct.mlx5_flow_destination*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store %struct.mlx5_flow_destination* %1, %struct.mlx5_flow_destination** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %9 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %8)
  store i8* %9, i8** %7, align 8
  %10 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %45 [
    i32 128, label %13
    i32 132, label %20
    i32 131, label %26
    i32 129, label %32
    i32 133, label %38
    i32 130, label %42
  ]

13:                                               ; preds = %3
  %14 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %15 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %45

20:                                               ; preds = %3
  %21 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %22 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %45

26:                                               ; preds = %3
  %27 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %28 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %45

32:                                               ; preds = %3
  %33 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %34 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  br label %45

38:                                               ; preds = %3
  %39 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  br label %45

42:                                               ; preds = %3
  %43 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %44 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %3, %42, %38, %32, %26, %20, %13
  %46 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %47 = call i32 @trace_seq_putc(%struct.trace_seq* %46, i32 0)
  %48 = load i8*, i8** %7, align 8
  ret i8* %48
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
