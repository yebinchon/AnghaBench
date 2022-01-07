; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fw_tracer = type { %struct.TYPE_3__, i32, i32, i32, %struct.TYPE_4__, %struct.mlx5_core_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"FWTracer: Failed to allocate PD %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"FWTracer: Failed to create mkey %d\0A\00", align 1
@fw_tracer_event = common dso_local global i32 0, align 4
@DEVICE_TRACER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fw_tracer_init(%struct.mlx5_fw_tracer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_fw_tracer*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_fw_tracer* %0, %struct.mlx5_fw_tracer** %3, align 8
  %6 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %7 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_fw_tracer* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

10:                                               ; preds = %1
  %11 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %11, i32 0, i32 5
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %4, align 8
  %14 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %10
  %20 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %23, i32 0, i32 2
  %25 = call i32 @queue_work(i32 %22, i32* %24)
  br label %26

26:                                               ; preds = %19, %10
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %28 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @mlx5_core_alloc_pd(%struct.mlx5_core_dev* %27, i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %68

39:                                               ; preds = %26
  %40 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %41 = call i32 @mlx5_fw_tracer_create_mkey(%struct.mlx5_fw_tracer* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %60

48:                                               ; preds = %39
  %49 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %49, i32 0, i32 1
  %51 = load i32, i32* @fw_tracer_event, align 4
  %52 = load i32, i32* @DEVICE_TRACER, align 4
  %53 = call i32 @MLX5_NB_INIT(i32* %50, i32 %51, i32 %52)
  %54 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %55 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %55, i32 0, i32 1
  %57 = call i32 @mlx5_eq_notifier_register(%struct.mlx5_core_dev* %54, i32* %56)
  %58 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %59 = call i32 @mlx5_fw_tracer_start(%struct.mlx5_fw_tracer* %58)
  store i32 0, i32* %2, align 4
  br label %68

60:                                               ; preds = %44
  %61 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %62 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @mlx5_core_dealloc_pd(%struct.mlx5_core_dev* %61, i32 %65)
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %60, %48, %34, %9
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mlx5_fw_tracer*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mlx5_core_alloc_pd(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_fw_tracer_create_mkey(%struct.mlx5_fw_tracer*) #1

declare dso_local i32 @MLX5_NB_INIT(i32*, i32, i32) #1

declare dso_local i32 @mlx5_eq_notifier_register(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_fw_tracer_start(%struct.mlx5_fw_tracer*) #1

declare dso_local i32 @mlx5_core_dealloc_pd(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
