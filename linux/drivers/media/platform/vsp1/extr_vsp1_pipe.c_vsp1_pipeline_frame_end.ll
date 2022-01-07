; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_pipe.c_vsp1_pipeline_frame_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_pipe.c_vsp1_pipeline_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_pipeline = type { i32, i32 (%struct.vsp1_pipeline*, i32)*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_pipeline_frame_end(%struct.vsp1_pipeline* %0) #0 {
  %2 = alloca %struct.vsp1_pipeline*, align 8
  %3 = alloca i32, align 4
  store %struct.vsp1_pipeline* %0, %struct.vsp1_pipeline** %2, align 8
  %4 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %5 = icmp eq %struct.vsp1_pipeline* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %50

7:                                                ; preds = %1
  %8 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %9 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vsp1_dlm_irq_frame_end(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %15 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %7
  %19 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %20 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @vsp1_hgo_frame_end(i64 %21)
  br label %23

23:                                               ; preds = %18, %7
  %24 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %25 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %30 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @vsp1_hgt_frame_end(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %35 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %34, i32 0, i32 1
  %36 = load i32 (%struct.vsp1_pipeline*, i32)*, i32 (%struct.vsp1_pipeline*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.vsp1_pipeline*, i32)* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %40 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %39, i32 0, i32 1
  %41 = load i32 (%struct.vsp1_pipeline*, i32)*, i32 (%struct.vsp1_pipeline*, i32)** %40, align 8
  %42 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 %41(%struct.vsp1_pipeline* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %47 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %45, %6
  ret void
}

declare dso_local i32 @vsp1_dlm_irq_frame_end(i32) #1

declare dso_local i32 @vsp1_hgo_frame_end(i64) #1

declare dso_local i32 @vsp1_hgt_frame_end(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
