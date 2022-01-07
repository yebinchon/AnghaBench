; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.s5p_jpeg_ctx = type { i64 }
%struct.s5p_jpeg_q_data = type { i32 }

@S5P_JPEG_DECODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @s5p_jpeg_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca %struct.s5p_jpeg_ctx*, align 8
  %12 = alloca %struct.s5p_jpeg_q_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.device** %4, %struct.device*** %10, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %16 = call %struct.s5p_jpeg_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.s5p_jpeg_ctx* %16, %struct.s5p_jpeg_ctx** %11, align 8
  store %struct.s5p_jpeg_q_data* null, %struct.s5p_jpeg_q_data** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %11, align 8
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.s5p_jpeg_q_data* @get_q_data(%struct.s5p_jpeg_ctx* %19, i32 %22)
  store %struct.s5p_jpeg_q_data* %23, %struct.s5p_jpeg_q_data** %12, align 8
  %24 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %12, align 8
  %25 = icmp eq %struct.s5p_jpeg_q_data* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %12, align 8
  %29 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %11, align 8
  %32 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @S5P_JPEG_DECODE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  br label %37

37:                                               ; preds = %36, %5
  %38 = load i32, i32* %14, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  ret i32 0
}

declare dso_local %struct.s5p_jpeg_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.s5p_jpeg_q_data* @get_q_data(%struct.s5p_jpeg_ctx*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
