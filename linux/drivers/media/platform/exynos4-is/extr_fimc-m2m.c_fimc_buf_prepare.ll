; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fimc_ctx = type { i32 }
%struct.fimc_frame = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @fimc_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.fimc_ctx*, align 8
  %5 = alloca %struct.fimc_frame*, align 8
  %6 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = call %struct.fimc_ctx* @vb2_get_drv_priv(%struct.TYPE_4__* %9)
  store %struct.fimc_ctx* %10, %struct.fimc_ctx** %4, align 8
  %11 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.fimc_frame* @ctx_get_frame(%struct.fimc_ctx* %11, i32 %16)
  store %struct.fimc_frame* %17, %struct.fimc_frame** %5, align 8
  %18 = load %struct.fimc_frame*, %struct.fimc_frame** %5, align 8
  %19 = call i64 @IS_ERR(%struct.fimc_frame* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.fimc_frame*, %struct.fimc_frame** %5, align 8
  %23 = call i32 @PTR_ERR(%struct.fimc_frame* %22)
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.fimc_frame*, %struct.fimc_frame** %5, align 8
  %28 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.fimc_frame*, %struct.fimc_frame** %5, align 8
  %37 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %34, i32 %35, i32 %42)
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %25

47:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.fimc_ctx* @vb2_get_drv_priv(%struct.TYPE_4__*) #1

declare dso_local %struct.fimc_frame* @ctx_get_frame(%struct.fimc_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fimc_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.fimc_frame*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
