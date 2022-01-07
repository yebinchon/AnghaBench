; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vim2m_ctx = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vim2m_ctx*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vim2m_ctx*
  store %struct.vim2m_ctx* %7, %struct.vim2m_ctx** %3, align 8
  %8 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %11)
  store %struct.vb2_v4l2_buffer* %12, %struct.vb2_v4l2_buffer** %4, align 8
  %13 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %16)
  store %struct.vb2_v4l2_buffer* %17, %struct.vb2_v4l2_buffer** %5, align 8
  %18 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %23, i32 0, i32 2
  %25 = call i32 @v4l2_ctrl_request_setup(i32 %22, i32* %24)
  %26 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %27 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %28 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %29 = call i32 @device_process(%struct.vim2m_ctx* %26, %struct.vb2_v4l2_buffer* %27, %struct.vb2_v4l2_buffer* %28)
  %30 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %35, i32 0, i32 2
  %37 = call i32 @v4l2_ctrl_request_complete(i32 %34, i32* %36)
  %38 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %38, i32 0, i32 1
  %40 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @msecs_to_jiffies(i32 %42)
  %44 = call i32 @schedule_delayed_work(i32* %39, i32 %43)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local i32 @v4l2_ctrl_request_setup(i32, i32*) #1

declare dso_local i32 @device_process(%struct.vim2m_ctx*, %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @v4l2_ctrl_request_complete(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
