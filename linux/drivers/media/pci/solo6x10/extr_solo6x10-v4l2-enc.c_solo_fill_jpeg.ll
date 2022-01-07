; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_fill_jpeg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_fill_jpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_enc_dev = type { i64, %struct.solo_dev* }
%struct.solo_dev = type { i32 }
%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.sg_table = type { i32 }

@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DMA_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_enc_dev*, %struct.vb2_buffer*, i32*)* @solo_fill_jpeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_fill_jpeg(%struct.solo_enc_dev* %0, %struct.vb2_buffer* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.solo_enc_dev*, align 8
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca %struct.solo_dev*, align 8
  %10 = alloca %struct.sg_table*, align 8
  %11 = alloca i32, align 4
  store %struct.solo_enc_dev* %0, %struct.solo_enc_dev** %5, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %13 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %12)
  store %struct.vb2_v4l2_buffer* %13, %struct.vb2_v4l2_buffer** %8, align 8
  %14 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %5, align 8
  %15 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %14, i32 0, i32 1
  %16 = load %struct.solo_dev*, %struct.solo_dev** %15, align 8
  store %struct.solo_dev* %16, %struct.solo_dev** %9, align 8
  %17 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %18 = call %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer* %17, i32 0)
  store %struct.sg_table* %18, %struct.sg_table** %10, align 8
  %19 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %20 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %21 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %25 = call i64 @vb2_plane_size(%struct.vb2_buffer* %24, i32 0)
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @vop_jpeg_size(i32* %26)
  %28 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %5, align 8
  %29 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = icmp slt i64 %25, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %69

36:                                               ; preds = %3
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @vop_jpeg_size(i32* %37)
  %39 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %5, align 8
  %40 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load i32, i32* @DMA_ALIGN, align 4
  %44 = call i32 @ALIGN(i64 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @vop_jpeg_size(i32* %46)
  %48 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %5, align 8
  %49 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %45, i32 0, i64 %51)
  %53 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %5, align 8
  %54 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %5, align 8
  %55 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sg_table*, %struct.sg_table** %10, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i64 @vop_jpeg_offset(i32* %58)
  %60 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %61 = call i64 @SOLO_JPEG_EXT_ADDR(%struct.solo_dev* %60)
  %62 = sub nsw i64 %59, %61
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %65 = call i64 @SOLO_JPEG_EXT_ADDR(%struct.solo_dev* %64)
  %66 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %67 = call i32 @SOLO_JPEG_EXT_SIZE(%struct.solo_dev* %66)
  %68 = call i32 @solo_send_desc(%struct.solo_enc_dev* %53, i64 %56, %struct.sg_table* %57, i64 %62, i32 %63, i64 %65, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %36, %33
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vop_jpeg_size(i32*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

declare dso_local i32 @solo_send_desc(%struct.solo_enc_dev*, i64, %struct.sg_table*, i64, i32, i64, i32) #1

declare dso_local i64 @vop_jpeg_offset(i32*) #1

declare dso_local i64 @SOLO_JPEG_EXT_ADDR(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_JPEG_EXT_SIZE(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
