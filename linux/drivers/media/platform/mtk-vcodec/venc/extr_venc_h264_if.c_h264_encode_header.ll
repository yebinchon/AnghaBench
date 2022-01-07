; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_encode_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_encode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_h264_inst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_vcodec_mem = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_h264_inst*, %struct.mtk_vcodec_mem*, i32*)* @h264_encode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_encode_header(%struct.venc_h264_inst* %0, %struct.mtk_vcodec_mem* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.venc_h264_inst*, align 8
  %6 = alloca %struct.mtk_vcodec_mem*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.venc_h264_inst* %0, %struct.venc_h264_inst** %5, align 8
  store %struct.mtk_vcodec_mem* %1, %struct.mtk_vcodec_mem** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %12 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %13 = call i32 @h264_encode_sps(%struct.venc_h264_inst* %11, %struct.mtk_vcodec_mem* %12, i32* %9)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %20 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %21 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %20, i32 0, i32 0
  %22 = call i32 @h264_encode_pps(%struct.venc_h264_inst* %19, %struct.TYPE_2__* %21, i32* %10)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %18
  %28 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %35 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @memcpy(i64 %33, i32 %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %40, %41
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %27, %25, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @h264_encode_sps(%struct.venc_h264_inst*, %struct.mtk_vcodec_mem*, i32*) #1

declare dso_local i32 @h264_encode_pps(%struct.venc_h264_inst*, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
