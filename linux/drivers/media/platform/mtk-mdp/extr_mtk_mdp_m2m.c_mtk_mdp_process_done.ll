; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_process_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_process_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_dev = type { i32 }
%struct.mtk_mdp_ctx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mtk_mdp_process_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_mdp_process_done(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_mdp_dev*, align 8
  %6 = alloca %struct.mtk_mdp_ctx*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.mtk_mdp_dev*
  store %struct.mtk_mdp_dev* %10, %struct.mtk_mdp_dev** %5, align 8
  %11 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %5, align 8
  %12 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mtk_mdp_ctx* @v4l2_m2m_get_curr_priv(i32 %13)
  store %struct.mtk_mdp_ctx* %14, %struct.mtk_mdp_ctx** %6, align 8
  %15 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %16 = icmp ne %struct.mtk_mdp_ctx* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %69

18:                                               ; preds = %2
  %19 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %21)
  store %struct.vb2_v4l2_buffer* %22, %struct.vb2_v4l2_buffer** %7, align 8
  %23 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %25)
  store %struct.vb2_v4l2_buffer* %26, %struct.vb2_v4l2_buffer** %8, align 8
  %27 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %32 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %38 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %42 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %46 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %51 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %54, i32 %55)
  %57 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %57, i32 %58)
  %60 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %61 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @v4l2_m2m_job_finish(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.mtk_mdp_ctx* @v4l2_m2m_get_curr_priv(i32) #1

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
