; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_s_fmt_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_s_fmt_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.hva_ctx = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.vb2_queue = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"%s V4L2 S_FMT (OUTPUT): unsupported format %.4s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s V4L2 S_FMT (OUTPUT): queue busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@HVA_WIDTH_ALIGNMENT = common dso_local global i32 0, align 4
@HVA_HEIGHT_ALIGNMENT = common dso_local global i32 0, align 4
@HVA_FLAG_FRAMEINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @hva_s_fmt_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_s_fmt_frame(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.hva_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca %struct.vb2_queue*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hva_ctx* @fh_to_ctx(i32 %15)
  store %struct.hva_ctx* %16, %struct.hva_ctx** %8, align 8
  %17 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %18 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %17)
  store %struct.device* %18, %struct.device** %9, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.v4l2_pix_format* %21, %struct.v4l2_pix_format** %10, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = call i32 @hva_try_fmt_frame(%struct.file* %22, i8* %23, %struct.v4l2_format* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %3
  %29 = load %struct.device*, %struct.device** %9, align 8
  %30 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %33, i32 0, i32 2
  %35 = bitcast i64* %34 to i8*
  %36 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %35)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %124

38:                                               ; preds = %3
  %39 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %42, i32 %45)
  store %struct.vb2_queue* %46, %struct.vb2_queue** %11, align 8
  %47 = load %struct.vb2_queue*, %struct.vb2_queue** %11, align 8
  %48 = call i64 @vb2_is_streaming(%struct.vb2_queue* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load %struct.device*, %struct.device** %9, align 8
  %52 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %124

58:                                               ; preds = %38
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %75 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @HVA_WIDTH_ALIGNMENT, align 4
  %83 = call i8* @ALIGN(i32 %81, i32 %82)
  %84 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 5
  store i8* %83, i8** %86, align 8
  %87 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @HVA_HEIGHT_ALIGNMENT, align 4
  %91 = call i8* @ALIGN(i32 %89, i32 %90)
  %92 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %93 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  store i8* %91, i8** %94, align 8
  %95 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %96 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %99 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 8
  %101 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %102 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %105 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i64 %103, i64* %106, align 8
  %107 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %111 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %114 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %117 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load i32, i32* @HVA_FLAG_FRAMEINFO, align 4
  %120 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %121 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %58, %50, %28
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.hva_ctx* @fh_to_ctx(i32) #1

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @hva_try_fmt_frame(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_streaming(%struct.vb2_queue*) #1

declare dso_local i8* @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
