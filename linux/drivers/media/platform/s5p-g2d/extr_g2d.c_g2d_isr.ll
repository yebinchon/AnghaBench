; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_dev = type { %struct.g2d_ctx*, i32, i32 }
%struct.g2d_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @g2d_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.g2d_dev*, align 8
  %6 = alloca %struct.g2d_ctx*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.g2d_dev*
  store %struct.g2d_dev* %10, %struct.g2d_dev** %5, align 8
  %11 = load %struct.g2d_dev*, %struct.g2d_dev** %5, align 8
  %12 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %11, i32 0, i32 0
  %13 = load %struct.g2d_ctx*, %struct.g2d_ctx** %12, align 8
  store %struct.g2d_ctx* %13, %struct.g2d_ctx** %6, align 8
  %14 = load %struct.g2d_dev*, %struct.g2d_dev** %5, align 8
  %15 = call i32 @g2d_clear_int(%struct.g2d_dev* %14)
  %16 = load %struct.g2d_dev*, %struct.g2d_dev** %5, align 8
  %17 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_disable(i32 %18)
  %20 = load %struct.g2d_ctx*, %struct.g2d_ctx** %6, align 8
  %21 = icmp eq %struct.g2d_ctx* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.g2d_ctx*, %struct.g2d_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %27)
  store %struct.vb2_v4l2_buffer* %28, %struct.vb2_v4l2_buffer** %7, align 8
  %29 = load %struct.g2d_ctx*, %struct.g2d_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %32)
  store %struct.vb2_v4l2_buffer* %33, %struct.vb2_v4l2_buffer** %8, align 8
  %34 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %35 = icmp eq %struct.vb2_v4l2_buffer* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %39 = icmp eq %struct.vb2_v4l2_buffer* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %43 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %46 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %48 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %52 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %57 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %61 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %66 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %70 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %71 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %69, i32 %70)
  %72 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %73 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %74 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %72, i32 %73)
  %75 = load %struct.g2d_dev*, %struct.g2d_dev** %5, align 8
  %76 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.g2d_ctx*, %struct.g2d_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @v4l2_m2m_job_finish(i32 %77, i32 %81)
  %83 = load %struct.g2d_dev*, %struct.g2d_dev** %5, align 8
  %84 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %83, i32 0, i32 0
  store %struct.g2d_ctx* null, %struct.g2d_ctx** %84, align 8
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %85
}

declare dso_local i32 @g2d_clear_int(%struct.g2d_dev*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
