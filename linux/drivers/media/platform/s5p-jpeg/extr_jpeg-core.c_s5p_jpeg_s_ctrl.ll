; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.s5p_jpeg_ctx = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @s5p_jpeg_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.s5p_jpeg_ctx*, align 8
  %4 = alloca i64, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %5 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %6 = call %struct.s5p_jpeg_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl* %5)
  store %struct.s5p_jpeg_ctx* %6, %struct.s5p_jpeg_ctx** %3, align 8
  %7 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %34 [
    i32 129, label %16
    i32 128, label %22
    i32 130, label %28
  ]

16:                                               ; preds = %1
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %34

28:                                               ; preds = %1
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %30 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %1, %28, %22, %16
  %35 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret i32 0
}

declare dso_local %struct.s5p_jpeg_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
