; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fs_tracepoint.c_parse_fs_hdrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fs_tracepoint.c_parse_fs_hdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"[outer] \00", align 1
@MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"[misc] \00", align 1
@MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"[inner] \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_fs_hdrs(%struct.trace_seq* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.trace_seq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %19 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %18)
  store i8* %19, i8** %17, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %8
  %26 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %27 = call i32 @trace_seq_printf(%struct.trace_seq* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @print_lyr_2_4_hdrs(%struct.trace_seq* %28, i32* %29, i32* %30)
  br label %32

32:                                               ; preds = %25, %8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %40 = call i32 @trace_seq_printf(%struct.trace_seq* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @print_misc_parameters_hdrs(%struct.trace_seq* %41, i32* %42, i32* %43)
  br label %45

45:                                               ; preds = %38, %32
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %53 = call i32 @trace_seq_printf(%struct.trace_seq* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @print_lyr_2_4_hdrs(%struct.trace_seq* %54, i32* %55, i32* %56)
  br label %58

58:                                               ; preds = %51, %45
  %59 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %60 = call i32 @trace_seq_putc(%struct.trace_seq* %59, i32 0)
  %61 = load i8*, i8** %17, align 8
  ret i8* %61
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*) #1

declare dso_local i32 @print_lyr_2_4_hdrs(%struct.trace_seq*, i32*, i32*) #1

declare dso_local i32 @print_misc_parameters_hdrs(%struct.trace_seq*, i32*, i32*) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
