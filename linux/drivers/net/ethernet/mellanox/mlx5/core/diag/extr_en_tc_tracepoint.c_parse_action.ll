; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_en_tc_tracepoint.c_parse_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_en_tc_tracepoint.c_parse_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@NUM_FLOW_ACTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@FLOWACT2STR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"UNKNOWN \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_action(%struct.trace_seq* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %10 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %9)
  store i8* %10, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %39, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NUM_FLOW_ACTIONS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %25 = load i32*, i32** @FLOWACT2STR, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %38

35:                                               ; preds = %15
  %36 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %37 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %44 = call i32 @trace_seq_putc(%struct.trace_seq* %43, i32 0)
  %45 = load i8*, i8** %7, align 8
  ret i8* %45
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
