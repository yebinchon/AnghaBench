; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.g2d_ctx = type { i32 }
%struct.g2d_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @g2d_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.g2d_ctx*, align 8
  %5 = alloca %struct.g2d_frame*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call %struct.g2d_ctx* @vb2_get_drv_priv(%struct.TYPE_2__* %8)
  store %struct.g2d_ctx* %9, %struct.g2d_ctx** %4, align 8
  %10 = load %struct.g2d_ctx*, %struct.g2d_ctx** %4, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.g2d_frame* @get_frame(%struct.g2d_ctx* %10, i32 %15)
  store %struct.g2d_frame* %16, %struct.g2d_frame** %5, align 8
  %17 = load %struct.g2d_frame*, %struct.g2d_frame** %5, align 8
  %18 = call i64 @IS_ERR(%struct.g2d_frame* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.g2d_frame*, %struct.g2d_frame** %5, align 8
  %22 = call i32 @PTR_ERR(%struct.g2d_frame* %21)
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %25 = load %struct.g2d_frame*, %struct.g2d_frame** %5, align 8
  %26 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %24, i32 0, i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.g2d_ctx* @vb2_get_drv_priv(%struct.TYPE_2__*) #1

declare dso_local %struct.g2d_frame* @get_frame(%struct.g2d_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.g2d_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.g2d_frame*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
