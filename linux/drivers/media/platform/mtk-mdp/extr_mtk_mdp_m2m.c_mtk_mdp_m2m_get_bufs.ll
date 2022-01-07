; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_get_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_get_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_ctx = type { i32, %struct.mtk_mdp_frame, %struct.mtk_mdp_frame }
%struct.mtk_mdp_frame = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_mdp_ctx*)* @mtk_mdp_m2m_get_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_mdp_m2m_get_bufs(%struct.mtk_mdp_ctx* %0) #0 {
  %2 = alloca %struct.mtk_mdp_ctx*, align 8
  %3 = alloca %struct.mtk_mdp_frame*, align 8
  %4 = alloca %struct.mtk_mdp_frame*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_ctx** %2, align 8
  %7 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %7, i32 0, i32 2
  store %struct.mtk_mdp_frame* %8, %struct.mtk_mdp_frame** %3, align 8
  %9 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %9, i32 0, i32 1
  store %struct.mtk_mdp_frame* %10, %struct.mtk_mdp_frame** %4, align 8
  %11 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %13)
  store %struct.vb2_v4l2_buffer* %14, %struct.vb2_v4l2_buffer** %5, align 8
  %15 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %16 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %16, i32 0, i32 0
  %18 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %3, align 8
  %19 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %19, i32 0, i32 0
  %21 = call i32 @mtk_mdp_prepare_addr(%struct.mtk_mdp_ctx* %15, %struct.TYPE_2__* %17, %struct.mtk_mdp_frame* %18, i32* %20)
  %22 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %24)
  store %struct.vb2_v4l2_buffer* %25, %struct.vb2_v4l2_buffer** %6, align 8
  %26 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %27 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %27, i32 0, i32 0
  %29 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %30 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %30, i32 0, i32 0
  %32 = call i32 @mtk_mdp_prepare_addr(%struct.mtk_mdp_ctx* %26, %struct.TYPE_2__* %28, %struct.mtk_mdp_frame* %29, i32* %31)
  %33 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %38 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local i32 @mtk_mdp_prepare_addr(%struct.mtk_mdp_ctx*, %struct.TYPE_2__*, %struct.mtk_mdp_frame*, i32*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
