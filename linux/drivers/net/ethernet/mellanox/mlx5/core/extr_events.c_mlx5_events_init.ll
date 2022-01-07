; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_events.c_mlx5_events_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_events.c_mlx5_events_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_events* }
%struct.mlx5_events = type { i32, i32, %struct.mlx5_core_dev*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mlx5_events\00", align 1
@mlx5_pcie_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_events_init(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_events*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mlx5_events* @kzalloc(i32 24, i32 %5)
  store %struct.mlx5_events* %6, %struct.mlx5_events** %4, align 8
  %7 = load %struct.mlx5_events*, %struct.mlx5_events** %4, align 8
  %8 = icmp ne %struct.mlx5_events* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.mlx5_events*, %struct.mlx5_events** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_events, %struct.mlx5_events* %13, i32 0, i32 3
  %15 = call i32 @ATOMIC_INIT_NOTIFIER_HEAD(i32* %14)
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %17 = load %struct.mlx5_events*, %struct.mlx5_events** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_events, %struct.mlx5_events* %17, i32 0, i32 2
  store %struct.mlx5_core_dev* %16, %struct.mlx5_core_dev** %18, align 8
  %19 = load %struct.mlx5_events*, %struct.mlx5_events** %4, align 8
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.mlx5_events* %19, %struct.mlx5_events** %22, align 8
  %23 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.mlx5_events*, %struct.mlx5_events** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_events, %struct.mlx5_events* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlx5_events*, %struct.mlx5_events** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_events, %struct.mlx5_events* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %12
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %12
  %34 = load %struct.mlx5_events*, %struct.mlx5_events** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_events, %struct.mlx5_events* %34, i32 0, i32 0
  %36 = load i32, i32* @mlx5_pcie_event, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %30, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.mlx5_events* @kzalloc(i32, i32) #1

declare dso_local i32 @ATOMIC_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
