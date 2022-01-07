; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_set_capture_queue_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_set_capture_queue_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { %struct.TYPE_3__, %struct.s5p_jpeg_q_data }
%struct.TYPE_3__ = type { i32, i32 }
%struct.s5p_jpeg_q_data = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@S5P_JPEG_MIN_WIDTH = common dso_local global i32 0, align 4
@S5P_JPEG_MAX_WIDTH = common dso_local global i32 0, align 4
@S5P_JPEG_MIN_HEIGHT = common dso_local global i32 0, align 4
@S5P_JPEG_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_jpeg_ctx*)* @s5p_jpeg_set_capture_queue_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_jpeg_set_capture_queue_data(%struct.s5p_jpeg_ctx* %0) #0 {
  %2 = alloca %struct.s5p_jpeg_ctx*, align 8
  %3 = alloca %struct.s5p_jpeg_q_data*, align 8
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %2, align 8
  %4 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %4, i32 0, i32 1
  store %struct.s5p_jpeg_q_data* %5, %struct.s5p_jpeg_q_data** %3, align 8
  %6 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %3, align 8
  %11 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %3, align 8
  %17 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %19 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %3, align 8
  %20 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %19, i32 0, i32 0
  %21 = load i32, i32* @S5P_JPEG_MIN_WIDTH, align 4
  %22 = load i32, i32* @S5P_JPEG_MAX_WIDTH, align 4
  %23 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %3, align 8
  %24 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %3, align 8
  %29 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %28, i32 0, i32 1
  %30 = load i32, i32* @S5P_JPEG_MIN_HEIGHT, align 4
  %31 = load i32, i32* @S5P_JPEG_MAX_HEIGHT, align 4
  %32 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %3, align 8
  %33 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @jpeg_bound_align_image(%struct.s5p_jpeg_ctx* %18, i32* %20, i32 %21, i32 %22, i32 %27, i32* %29, i32 %30, i32 %31, i32 %36)
  %38 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %3, align 8
  %39 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %3, align 8
  %42 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %3, align 8
  %46 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %44, %49
  %51 = ashr i32 %50, 3
  %52 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %3, align 8
  %53 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  ret void
}

declare dso_local i32 @jpeg_bound_align_image(%struct.s5p_jpeg_ctx*, i32*, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
