; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_fillbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_fillbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i32 }
%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i64 }

@SOLO_DISP_EXT_ADDR = common dso_local global i32 0, align 4
@SOLO_HW_BPL = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*, %struct.vb2_buffer*)* @solo_fillbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_fillbuf(%struct.solo_dev* %0, %struct.vb2_buffer* %1) #0 {
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca %struct.vb2_buffer*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %4, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %13 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %12)
  store %struct.vb2_v4l2_buffer* %13, %struct.vb2_v4l2_buffer** %5, align 8
  store i32 -1, i32* %8, align 4
  %14 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %15 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %21 = call i64 @erase_off(%struct.solo_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %19
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %25 = call i8* @vb2_plane_vaddr(%struct.vb2_buffer* %24, i32 0)
  store i8* %25, i8** %10, align 8
  %26 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %27 = call i32 @solo_image_size(%struct.solo_dev* %26)
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %44, %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 128, i32* %37, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %9, align 4
  br label %28

47:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %68

48:                                               ; preds = %19
  %49 = load i32, i32* @SOLO_DISP_EXT_ADDR, align 4
  %50 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %51 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SOLO_HW_BPL, align 4
  %54 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %55 = call i32 @solo_vlines(%struct.solo_dev* %54)
  %56 = mul i32 %53, %55
  %57 = mul i32 %52, %56
  %58 = add i32 %49, %57
  store i32 %58, i32* %7, align 4
  %59 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %63 = call i32 @solo_bytesperline(%struct.solo_dev* %62)
  %64 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %65 = call i32 @solo_vlines(%struct.solo_dev* %64)
  %66 = load i32, i32* @SOLO_HW_BPL, align 4
  %67 = call i32 @solo_p2m_dma_t(%struct.solo_dev* %59, i32 0, i32 %60, i32 %61, i32 %63, i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %48, %47
  br label %69

69:                                               ; preds = %68, %18
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %69
  %73 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %74 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %75 = call i32 @solo_vlines(%struct.solo_dev* %74)
  %76 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %77 = call i32 @solo_bytesperline(%struct.solo_dev* %76)
  %78 = mul i32 %75, %77
  %79 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %73, i32 0, i32 %78)
  %80 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %81 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = sext i32 %82 to i64
  %85 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %86 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = call i32 (...) @ktime_get_ns()
  %88 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %89 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %72, %69
  %91 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %91, i32 %99)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @erase_off(%struct.solo_dev*) #1

declare dso_local i8* @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @solo_image_size(%struct.solo_dev*) #1

declare dso_local i32 @solo_vlines(%struct.solo_dev*) #1

declare dso_local i32 @solo_p2m_dma_t(%struct.solo_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @solo_bytesperline(%struct.solo_dev*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
