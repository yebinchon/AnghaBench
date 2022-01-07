; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fw_tracer = type { i32, %struct.mlx5_core_dev*, i32, i32, i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@tracer_registers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"FWTracer: Tracer capability not present\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"mlx5_fw_tracer\00", align 1
@mlx5_fw_tracer_ownership_change = common dso_local global i32 0, align 4
@mlx5_tracer_read_strings_db = common dso_local global i32 0, align 4
@mlx5_fw_tracer_handle_traces = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"FWTracer: Failed to query capabilities %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"FWTracer: Create log buffer failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"FWTracer: Allocate strings database failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"FWTracer: Tracer created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_fw_tracer* @mlx5_fw_tracer_create(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_fw_tracer*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fw_tracer*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_fw_tracer* null, %struct.mlx5_fw_tracer** %4, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = load i32, i32* @tracer_registers, align 4
  %8 = call i32 @MLX5_CAP_MCAM_REG(%struct.mlx5_core_dev* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %12 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.mlx5_fw_tracer* null, %struct.mlx5_fw_tracer** %2, align 8
  br label %99

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mlx5_fw_tracer* @kzalloc(i32 32, i32 %14)
  store %struct.mlx5_fw_tracer* %15, %struct.mlx5_fw_tracer** %4, align 8
  %16 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %17 = icmp ne %struct.mlx5_fw_tracer* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.mlx5_fw_tracer* @ERR_PTR(i32 %20)
  store %struct.mlx5_fw_tracer* %21, %struct.mlx5_fw_tracer** %2, align 8
  br label %99

22:                                               ; preds = %13
  %23 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %94

33:                                               ; preds = %22
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %35 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %35, i32 0, i32 1
  store %struct.mlx5_core_dev* %34, %struct.mlx5_core_dev** %36, align 8
  %37 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %37, i32 0, i32 5
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %40, i32 0, i32 4
  %42 = load i32, i32* @mlx5_fw_tracer_ownership_change, align 4
  %43 = call i32 @INIT_WORK(i32* %41, i32 %42)
  %44 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %44, i32 0, i32 3
  %46 = load i32, i32* @mlx5_tracer_read_strings_db, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %48, i32 0, i32 2
  %50 = load i32, i32* @mlx5_fw_tracer_handle_traces, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %53 = call i32 @mlx5_query_mtrc_caps(%struct.mlx5_fw_tracer* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %33
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %87

60:                                               ; preds = %33
  %61 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %62 = call i32 @mlx5_fw_tracer_create_log_buf(%struct.mlx5_fw_tracer* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %87

69:                                               ; preds = %60
  %70 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %71 = call i32 @mlx5_fw_tracer_allocate_strings_db(%struct.mlx5_fw_tracer* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  br label %84

78:                                               ; preds = %69
  %79 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %80 = call i32 @mlx5_fw_tracer_init_saved_traces_array(%struct.mlx5_fw_tracer* %79)
  %81 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %82 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %83 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  store %struct.mlx5_fw_tracer* %83, %struct.mlx5_fw_tracer** %2, align 8
  br label %99

84:                                               ; preds = %74
  %85 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %86 = call i32 @mlx5_fw_tracer_destroy_log_buf(%struct.mlx5_fw_tracer* %85)
  br label %87

87:                                               ; preds = %84, %65, %56
  %88 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %89 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %88, i32 0, i32 1
  store %struct.mlx5_core_dev* null, %struct.mlx5_core_dev** %89, align 8
  %90 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %91 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @destroy_workqueue(i32 %92)
  br label %94

94:                                               ; preds = %87, %30
  %95 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %96 = call i32 @kfree(%struct.mlx5_fw_tracer* %95)
  %97 = load i32, i32* %5, align 4
  %98 = call %struct.mlx5_fw_tracer* @ERR_PTR(i32 %97)
  store %struct.mlx5_fw_tracer* %98, %struct.mlx5_fw_tracer** %2, align 8
  br label %99

99:                                               ; preds = %94, %78, %18, %10
  %100 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %2, align 8
  ret %struct.mlx5_fw_tracer* %100
}

declare dso_local i32 @MLX5_CAP_MCAM_REG(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local %struct.mlx5_fw_tracer* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_fw_tracer* @ERR_PTR(i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mlx5_query_mtrc_caps(%struct.mlx5_fw_tracer*) #1

declare dso_local i32 @mlx5_fw_tracer_create_log_buf(%struct.mlx5_fw_tracer*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_fw_tracer_allocate_strings_db(%struct.mlx5_fw_tracer*) #1

declare dso_local i32 @mlx5_fw_tracer_init_saved_traces_array(%struct.mlx5_fw_tracer*) #1

declare dso_local i32 @mlx5_fw_tracer_destroy_log_buf(%struct.mlx5_fw_tracer*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_fw_tracer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
