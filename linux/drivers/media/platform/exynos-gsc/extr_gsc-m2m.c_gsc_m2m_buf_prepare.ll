; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.gsc_ctx = type { i32 }
%struct.gsc_frame = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @gsc_m2m_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_m2m_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.gsc_ctx*, align 8
  %5 = alloca %struct.gsc_frame*, align 8
  %6 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = call %struct.gsc_ctx* @vb2_get_drv_priv(%struct.TYPE_4__* %9)
  store %struct.gsc_ctx* %10, %struct.gsc_ctx** %4, align 8
  %11 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.gsc_frame* @ctx_get_frame(%struct.gsc_ctx* %11, i32 %16)
  store %struct.gsc_frame* %17, %struct.gsc_frame** %5, align 8
  %18 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %19 = call i64 @IS_ERR(%struct.gsc_frame* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %23 = call i32 @PTR_ERR(%struct.gsc_frame* %22)
  store i32 %23, i32* %2, align 4
  br label %57

24:                                               ; preds = %1
  %25 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @V4L2_TYPE_IS_OUTPUT(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %36 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %34, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %45 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %42, i32 %43, i32 %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %24
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %21
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.gsc_ctx* @vb2_get_drv_priv(%struct.TYPE_4__*) #1

declare dso_local %struct.gsc_frame* @ctx_get_frame(%struct.gsc_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gsc_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.gsc_frame*) #1

declare dso_local i32 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
