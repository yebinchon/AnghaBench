; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_pipeline_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_pipeline_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_pipeline = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvip_pipeline*, i32)* @xvip_pipeline_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvip_pipeline_set_stream(%struct.xvip_pipeline* %0, i32 %1) #0 {
  %3 = alloca %struct.xvip_pipeline*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xvip_pipeline* %0, %struct.xvip_pipeline** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %7 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %13 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %16 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %22 = call i32 @xvip_pipeline_start_stop(%struct.xvip_pipeline* %21, i32 1)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %43

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %29 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %34 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %40 = call i32 @xvip_pipeline_start_stop(%struct.xvip_pipeline* %39, i32 0)
  br label %41

41:                                               ; preds = %38, %32
  br label %42

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %45 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %44, i32 0, i32 2
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xvip_pipeline_start_stop(%struct.xvip_pipeline*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
