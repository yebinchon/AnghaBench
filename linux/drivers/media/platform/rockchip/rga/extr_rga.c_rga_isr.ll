; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_rga = type { i32, %struct.rga_ctx* }
%struct.rga_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@RGA_INT = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rga_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rga_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rockchip_rga*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca %struct.rga_ctx*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.rockchip_rga*
  store %struct.rockchip_rga* %11, %struct.rockchip_rga** %5, align 8
  %12 = load %struct.rockchip_rga*, %struct.rockchip_rga** %5, align 8
  %13 = load i32, i32* @RGA_INT, align 4
  %14 = call i32 @rga_read(%struct.rockchip_rga* %12, i32 %13)
  %15 = and i32 %14, 15
  store i32 %15, i32* %6, align 4
  %16 = load %struct.rockchip_rga*, %struct.rockchip_rga** %5, align 8
  %17 = load i32, i32* @RGA_INT, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 4
  %20 = call i32 @rga_mod(%struct.rockchip_rga* %16, i32 %17, i32 %19, i32 240)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %96

24:                                               ; preds = %2
  %25 = load %struct.rockchip_rga*, %struct.rockchip_rga** %5, align 8
  %26 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %25, i32 0, i32 1
  %27 = load %struct.rga_ctx*, %struct.rga_ctx** %26, align 8
  store %struct.rga_ctx* %27, %struct.rga_ctx** %9, align 8
  %28 = load %struct.rga_ctx*, %struct.rga_ctx** %9, align 8
  %29 = icmp ne %struct.rga_ctx* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.rockchip_rga*, %struct.rockchip_rga** %5, align 8
  %34 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %33, i32 0, i32 1
  store %struct.rga_ctx* null, %struct.rga_ctx** %34, align 8
  %35 = load %struct.rga_ctx*, %struct.rga_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %38)
  store %struct.vb2_v4l2_buffer* %39, %struct.vb2_v4l2_buffer** %7, align 8
  %40 = load %struct.rga_ctx*, %struct.rga_ctx** %9, align 8
  %41 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %43)
  store %struct.vb2_v4l2_buffer* %44, %struct.vb2_v4l2_buffer** %8, align 8
  %45 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %46 = icmp ne %struct.vb2_v4l2_buffer* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %51 = icmp ne %struct.vb2_v4l2_buffer* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %56 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %59 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %61 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %65 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %70 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %74 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %79 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %83 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %84 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %82, i32 %83)
  %85 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %86 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %87 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %85, i32 %86)
  %88 = load %struct.rockchip_rga*, %struct.rockchip_rga** %5, align 8
  %89 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.rga_ctx*, %struct.rga_ctx** %9, align 8
  %92 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @v4l2_m2m_job_finish(i32 %90, i32 %94)
  br label %96

96:                                               ; preds = %24, %2
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %97
}

declare dso_local i32 @rga_read(%struct.rockchip_rga*, i32) #1

declare dso_local i32 @rga_mod(%struct.rockchip_rga*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

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
