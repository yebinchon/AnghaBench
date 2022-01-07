; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_pipeline_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_pipeline_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_pipeline = type { i64, i32 }
%struct.xvip_dma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvip_pipeline*, %struct.xvip_dma*)* @xvip_pipeline_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvip_pipeline_prepare(%struct.xvip_pipeline* %0, %struct.xvip_dma* %1) #0 {
  %3 = alloca %struct.xvip_pipeline*, align 8
  %4 = alloca %struct.xvip_dma*, align 8
  %5 = alloca i32, align 4
  store %struct.xvip_pipeline* %0, %struct.xvip_pipeline** %3, align 8
  store %struct.xvip_dma* %1, %struct.xvip_dma** %4, align 8
  %6 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %7 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %10 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %15 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %16 = call i32 @xvip_pipeline_validate(%struct.xvip_pipeline* %14, %struct.xvip_dma* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %21 = call i32 @__xvip_pipeline_cleanup(%struct.xvip_pipeline* %20)
  br label %28

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %25 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %3, align 8
  %30 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xvip_pipeline_validate(%struct.xvip_pipeline*, %struct.xvip_dma*) #1

declare dso_local i32 @__xvip_pipeline_cleanup(%struct.xvip_pipeline*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
