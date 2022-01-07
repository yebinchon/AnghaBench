; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_regs.c_mtk_mdp_hw_set_out_image_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_regs.c_mtk_mdp_hw_set_out_image_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_ctx = type { %struct.TYPE_5__, %struct.mtk_mdp_frame }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mdp_buffer, %struct.mdp_config }
%struct.mdp_buffer = type { i32, i32* }
%struct.mdp_config = type { i64, i64, i32 }
%struct.mtk_mdp_frame = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_mdp_hw_set_out_image_format(%struct.mtk_mdp_ctx* %0) #0 {
  %2 = alloca %struct.mtk_mdp_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_mdp_frame*, align 8
  %5 = alloca %struct.mdp_config*, align 8
  %6 = alloca %struct.mdp_buffer*, align 8
  store %struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_ctx** %2, align 8
  %7 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %7, i32 0, i32 1
  store %struct.mtk_mdp_frame* %8, %struct.mtk_mdp_frame** %4, align 8
  %9 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.mdp_config* %13, %struct.mdp_config** %5, align 8
  %14 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.mdp_buffer* %18, %struct.mdp_buffer** %6, align 8
  %19 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mdp_buffer*, %struct.mdp_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.mdp_buffer, %struct.mdp_buffer* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mtk_mdp_map_color_format(i32 %30)
  %32 = load %struct.mdp_config*, %struct.mdp_config** %5, align 8
  %33 = getelementptr inbounds %struct.mdp_config, %struct.mdp_config* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mdp_config*, %struct.mdp_config** %5, align 8
  %35 = getelementptr inbounds %struct.mdp_config, %struct.mdp_config* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.mdp_config*, %struct.mdp_config** %5, align 8
  %37 = getelementptr inbounds %struct.mdp_config, %struct.mdp_config* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %58, %1
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.mdp_buffer*, %struct.mdp_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.mdp_buffer, %struct.mdp_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %46 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mdp_buffer*, %struct.mdp_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.mdp_buffer, %struct.mdp_buffer* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %3, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %38

61:                                               ; preds = %38
  ret void
}

declare dso_local i32 @mtk_mdp_map_color_format(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
