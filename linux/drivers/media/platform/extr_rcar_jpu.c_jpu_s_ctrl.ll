; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i64, i32 }
%struct.jpu_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@V4L2_CID_JPEG_COMPRESSION_QUALITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @jpu_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpu_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.jpu_ctx*, align 8
  %4 = alloca i64, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %5 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %6 = call %struct.jpu_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl* %5)
  store %struct.jpu_ctx* %6, %struct.jpu_ctx** %3, align 8
  %7 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_CID_JPEG_COMPRESSION_QUALITY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret i32 0
}

declare dso_local %struct.jpu_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
