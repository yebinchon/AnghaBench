; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_put_fb_to_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_put_fb_to_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_h264_inst = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.h264_ring_fb_list }
%struct.h264_ring_fb_list = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.vdec_fb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@H264_MAX_FB_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"[FB] put fb free_list full\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"[FB] put fb into free_list @(%p, %llx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdec_h264_inst*, %struct.vdec_fb*)* @put_fb_to_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_fb_to_free(%struct.vdec_h264_inst* %0, %struct.vdec_fb* %1) #0 {
  %3 = alloca %struct.vdec_h264_inst*, align 8
  %4 = alloca %struct.vdec_fb*, align 8
  %5 = alloca %struct.h264_ring_fb_list*, align 8
  store %struct.vdec_h264_inst* %0, %struct.vdec_h264_inst** %3, align 8
  store %struct.vdec_fb* %1, %struct.vdec_fb** %4, align 8
  %6 = load %struct.vdec_fb*, %struct.vdec_fb** %4, align 8
  %7 = icmp ne %struct.vdec_fb* %6, null
  br i1 %7, label %8, label %68

8:                                                ; preds = %2
  %9 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %10 = call i64 @check_list_validity(%struct.vdec_h264_inst* %9, i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %68

13:                                               ; preds = %8
  %14 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %15 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.h264_ring_fb_list* %17, %struct.h264_ring_fb_list** %5, align 8
  %18 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %5, align 8
  %19 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @H264_MAX_FB_NUM, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %25 = call i32 @mtk_vcodec_err(%struct.vdec_h264_inst* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %68

26:                                               ; preds = %13
  %27 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %28 = load %struct.vdec_fb*, %struct.vdec_fb** %4, align 8
  %29 = getelementptr inbounds %struct.vdec_fb, %struct.vdec_fb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vdec_fb*, %struct.vdec_fb** %4, align 8
  %33 = getelementptr inbounds %struct.vdec_fb, %struct.vdec_fb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mtk_vcodec_debug(%struct.vdec_h264_inst* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %35)
  %37 = load %struct.vdec_fb*, %struct.vdec_fb** %4, align 8
  %38 = ptrtoint %struct.vdec_fb* %37 to i64
  %39 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %5, align 8
  %40 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %5, align 8
  %43 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 %38, i64* %46, align 8
  %47 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %5, align 8
  %48 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @H264_MAX_FB_NUM, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %26
  br label %60

55:                                               ; preds = %26
  %56 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %5, align 8
  %57 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  br label %60

60:                                               ; preds = %55, %54
  %61 = phi i64 [ 0, %54 ], [ %59, %55 ]
  %62 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %5, align 8
  %63 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %5, align 8
  %65 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %12, %23, %60, %2
  ret void
}

declare dso_local i64 @check_list_validity(%struct.vdec_h264_inst*, i32) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_h264_inst*, i8*) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_h264_inst*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
