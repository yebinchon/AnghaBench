; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_mdp_ctx = type { i32 }
%struct.mtk_mdp_frame = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @mtk_mdp_m2m_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_m2m_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.mtk_mdp_ctx*, align 8
  %4 = alloca %struct.mtk_mdp_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %7 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call %struct.mtk_mdp_ctx* @vb2_get_drv_priv(%struct.TYPE_4__* %8)
  store %struct.mtk_mdp_ctx* %9, %struct.mtk_mdp_ctx** %3, align 8
  %10 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx* %10, i32 %15)
  store %struct.mtk_mdp_frame* %16, %struct.mtk_mdp_frame** %4, align 8
  %17 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @V4L2_TYPE_IS_OUTPUT(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %34, i32 %35, i32 %42)
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %25

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47, %1
  ret i32 0
}

declare dso_local %struct.mtk_mdp_ctx* @vb2_get_drv_priv(%struct.TYPE_4__*) #1

declare dso_local %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx*, i32) #1

declare dso_local i32 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
