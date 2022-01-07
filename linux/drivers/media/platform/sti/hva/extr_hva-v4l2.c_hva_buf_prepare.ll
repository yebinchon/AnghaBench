; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.hva_ctx = type { i32, i32 }
%struct.device = type { i32 }
%struct.vb2_v4l2_buffer = type { i64, i32 }
%struct.hva_frame = type { i32, i8*, i8*, i32 }
%struct.hva_stream = type { i32, i8*, i8*, i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"%s frame[%d] prepare: %d field not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s frame[%d] prepared; virt=%p, phy=%pad\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s stream[%d] prepared; virt=%p, phy=%pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @hva_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.hva_ctx*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.hva_frame*, align 8
  %8 = alloca %struct.hva_stream*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call %struct.hva_ctx* @vb2_get_drv_priv(%struct.TYPE_2__* %11)
  store %struct.hva_ctx* %12, %struct.hva_ctx** %4, align 8
  %13 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %14 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %13)
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %16 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %15)
  store %struct.vb2_v4l2_buffer* %16, %struct.vb2_v4l2_buffer** %6, align 8
  %17 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %18 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %94

24:                                               ; preds = %1
  %25 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %26 = call %struct.hva_frame* @to_hva_frame(%struct.vb2_v4l2_buffer* %25)
  store %struct.hva_frame* %26, %struct.hva_frame** %7, align 8
  %27 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %34 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %24
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %38 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %48 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (%struct.device*, i8*, i32, i32, i64, ...) @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i64 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %135

56:                                               ; preds = %36
  %57 = load %struct.hva_frame*, %struct.hva_frame** %7, align 8
  %58 = getelementptr inbounds %struct.hva_frame, %struct.hva_frame* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %56
  %62 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %62, i32 0, i32 1
  %64 = call i8* @vb2_plane_vaddr(i32* %63, i32 0)
  %65 = load %struct.hva_frame*, %struct.hva_frame** %7, align 8
  %66 = getelementptr inbounds %struct.hva_frame, %struct.hva_frame* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %67, i32 0, i32 1
  %69 = call i8* @vb2_dma_contig_plane_dma_addr(i32* %68, i32 0)
  %70 = load %struct.hva_frame*, %struct.hva_frame** %7, align 8
  %71 = getelementptr inbounds %struct.hva_frame, %struct.hva_frame* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hva_frame*, %struct.hva_frame** %7, align 8
  %76 = getelementptr inbounds %struct.hva_frame, %struct.hva_frame* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.hva_frame*, %struct.hva_frame** %7, align 8
  %78 = getelementptr inbounds %struct.hva_frame, %struct.hva_frame* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %84 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.hva_frame*, %struct.hva_frame** %7, align 8
  %87 = getelementptr inbounds %struct.hva_frame, %struct.hva_frame* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.hva_frame*, %struct.hva_frame** %7, align 8
  %91 = getelementptr inbounds %struct.hva_frame, %struct.hva_frame* %90, i32 0, i32 1
  %92 = call i32 (%struct.device*, i8*, i32, i32, i64, ...) @dev_dbg(%struct.device* %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85, i64 %89, i8** %91)
  br label %93

93:                                               ; preds = %61, %56
  br label %134

94:                                               ; preds = %1
  %95 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %96 = call %struct.hva_stream* @to_hva_stream(%struct.vb2_v4l2_buffer* %95)
  store %struct.hva_stream* %96, %struct.hva_stream** %8, align 8
  %97 = load %struct.hva_stream*, %struct.hva_stream** %8, align 8
  %98 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %133, label %101

101:                                              ; preds = %94
  %102 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %103 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %102, i32 0, i32 1
  %104 = call i8* @vb2_plane_vaddr(i32* %103, i32 0)
  %105 = load %struct.hva_stream*, %struct.hva_stream** %8, align 8
  %106 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %108 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %107, i32 0, i32 1
  %109 = call i8* @vb2_dma_contig_plane_dma_addr(i32* %108, i32 0)
  %110 = load %struct.hva_stream*, %struct.hva_stream** %8, align 8
  %111 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %113 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %112, i32 0, i32 1
  %114 = call i32 @vb2_plane_size(i32* %113, i32 0)
  %115 = load %struct.hva_stream*, %struct.hva_stream** %8, align 8
  %116 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.hva_stream*, %struct.hva_stream** %8, align 8
  %118 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %124 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.hva_stream*, %struct.hva_stream** %8, align 8
  %127 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = load %struct.hva_stream*, %struct.hva_stream** %8, align 8
  %131 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %130, i32 0, i32 1
  %132 = call i32 (%struct.device*, i8*, i32, i32, i64, ...) @dev_dbg(%struct.device* %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %125, i64 %129, i8** %131)
  br label %133

133:                                              ; preds = %101, %94
  br label %134

134:                                              ; preds = %133, %93
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %42
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.hva_ctx* @vb2_get_drv_priv(%struct.TYPE_2__*) #1

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.hva_frame* @to_hva_frame(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i64, ...) #1

declare dso_local i8* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i8* @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local %struct.hva_stream* @to_hva_stream(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @vb2_plane_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
