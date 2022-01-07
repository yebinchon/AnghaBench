; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_fill_mpeg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_fill_mpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_enc_dev = type { i32, %struct.solo_dev* }
%struct.solo_dev = type { i32 }
%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.sg_table = type { i32 }

@EIO = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_PFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_BFRAME = common dso_local global i32 0, align 4
@DMA_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_enc_dev*, %struct.vb2_buffer*, i32*)* @solo_fill_mpeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_fill_mpeg(%struct.solo_enc_dev* %0, %struct.vb2_buffer* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.solo_enc_dev*, align 8
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca %struct.solo_dev*, align 8
  %10 = alloca %struct.sg_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.solo_enc_dev* %0, %struct.solo_enc_dev** %5, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %15 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %14)
  store %struct.vb2_v4l2_buffer* %15, %struct.vb2_v4l2_buffer** %8, align 8
  %16 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %5, align 8
  %17 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %16, i32 0, i32 1
  %18 = load %struct.solo_dev*, %struct.solo_dev** %17, align 8
  store %struct.solo_dev* %18, %struct.solo_dev** %9, align 8
  %19 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %20 = call %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer* %19, i32 0)
  store %struct.sg_table* %20, %struct.sg_table** %10, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %22 = call i64 @vb2_plane_size(%struct.vb2_buffer* %21, i32 0)
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @vop_mpeg_size(i32* %23)
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %101

29:                                               ; preds = %3
  %30 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %31 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @V4L2_BUF_FLAG_BFRAME, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %37 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @vop_type(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %29
  %44 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %5, align 8
  %45 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %48 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %49 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @vop_mpeg_size(i32* %53)
  %55 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %5, align 8
  %56 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %52, i32 0, i64 %59)
  br label %71

61:                                               ; preds = %29
  %62 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  %63 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %64 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @vop_mpeg_size(i32* %68)
  %70 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %67, i32 0, i64 %69)
  br label %71

71:                                               ; preds = %61, %43
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @vop_mpeg_offset(i32* %72)
  %74 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %75 = call i32 @SOLO_MP4E_EXT_ADDR(%struct.solo_dev* %74)
  %76 = sub nsw i32 %73, %75
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 4
  %79 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %80 = call i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev* %79)
  %81 = sext i32 %80 to i64
  %82 = urem i64 %78, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i64 @vop_mpeg_size(i32* %84)
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load i32, i32* @DMA_ALIGN, align 4
  %90 = call i32 @ALIGN(i64 %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %5, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.sg_table*, %struct.sg_table** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %97 = call i32 @SOLO_MP4E_EXT_ADDR(%struct.solo_dev* %96)
  %98 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %99 = call i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev* %98)
  %100 = call i32 @solo_send_desc(%struct.solo_enc_dev* %91, i32 %92, %struct.sg_table* %93, i32 %94, i32 %95, i32 %97, i32 %99)
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %71, %26
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vop_mpeg_size(i32*) #1

declare dso_local i32 @vop_type(i32*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

declare dso_local i32 @vop_mpeg_offset(i32*) #1

declare dso_local i32 @SOLO_MP4E_EXT_ADDR(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @solo_send_desc(%struct.solo_enc_dev*, i32, %struct.sg_table*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
