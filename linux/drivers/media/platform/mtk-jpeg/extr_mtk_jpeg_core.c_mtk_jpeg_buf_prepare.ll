; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_jpeg_ctx = type { i32 }
%struct.mtk_jpeg_q_data = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @mtk_jpeg_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.mtk_jpeg_ctx*, align 8
  %5 = alloca %struct.mtk_jpeg_q_data*, align 8
  %6 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = call %struct.mtk_jpeg_ctx* @vb2_get_drv_priv(%struct.TYPE_4__* %9)
  store %struct.mtk_jpeg_ctx* %10, %struct.mtk_jpeg_ctx** %4, align 8
  store %struct.mtk_jpeg_q_data* null, %struct.mtk_jpeg_q_data** %5, align 8
  %11 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mtk_jpeg_q_data* @mtk_jpeg_get_q_data(%struct.mtk_jpeg_ctx* %11, i32 %16)
  store %struct.mtk_jpeg_q_data* %17, %struct.mtk_jpeg_q_data** %5, align 8
  %18 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %5, align 8
  %19 = icmp ne %struct.mtk_jpeg_q_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %5, align 8
  %27 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %5, align 8
  %36 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %33, i32 %34, i32 %41)
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %24

46:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.mtk_jpeg_ctx* @vb2_get_drv_priv(%struct.TYPE_4__*) #1

declare dso_local %struct.mtk_jpeg_q_data* @mtk_jpeg_get_q_data(%struct.mtk_jpeg_ctx*, i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
