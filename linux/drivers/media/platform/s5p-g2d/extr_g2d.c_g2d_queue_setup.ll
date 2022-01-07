; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.g2d_ctx = type { i32 }
%struct.g2d_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @g2d_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.g2d_ctx*, align 8
  %13 = alloca %struct.g2d_frame*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %15 = call %struct.g2d_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.g2d_ctx* %15, %struct.g2d_ctx** %12, align 8
  %16 = load %struct.g2d_ctx*, %struct.g2d_ctx** %12, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.g2d_frame* @get_frame(%struct.g2d_ctx* %16, i32 %19)
  store %struct.g2d_frame* %20, %struct.g2d_frame** %13, align 8
  %21 = load %struct.g2d_frame*, %struct.g2d_frame** %13, align 8
  %22 = call i64 @IS_ERR(%struct.g2d_frame* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.g2d_frame*, %struct.g2d_frame** %13, align 8
  %26 = call i32 @PTR_ERR(%struct.g2d_frame* %25)
  store i32 %26, i32* %6, align 4
  br label %40

27:                                               ; preds = %5
  %28 = load %struct.g2d_frame*, %struct.g2d_frame** %13, align 8
  %29 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 1, i32* %33, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32*, i32** %8, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %27
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.g2d_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.g2d_frame* @get_frame(%struct.g2d_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.g2d_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.g2d_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
