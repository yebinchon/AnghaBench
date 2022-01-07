; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_check_list_validity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_check_list_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_h264_inst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.h264_ring_fb_list, %struct.h264_ring_fb_list }
%struct.h264_ring_fb_list = type { i64, i64, i64 }

@H264_MAX_FB_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"%s list err: cnt=%d r_idx=%d w_idx=%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"disp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdec_h264_inst*, i32)* @check_list_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_list_validity(%struct.vdec_h264_inst* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vdec_h264_inst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.h264_ring_fb_list*, align 8
  store %struct.vdec_h264_inst* %0, %struct.vdec_h264_inst** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %11 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %16 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi %struct.h264_ring_fb_list* [ %13, %9 ], [ %18, %14 ]
  store %struct.h264_ring_fb_list* %20, %struct.h264_ring_fb_list** %6, align 8
  %21 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %6, align 8
  %22 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @H264_MAX_FB_NUM, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %19
  %27 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %6, align 8
  %28 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @H264_MAX_FB_NUM, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %6, align 8
  %34 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @H264_MAX_FB_NUM, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %32, %26, %19
  %39 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %44 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %6, align 8
  %45 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %6, align 8
  %48 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.h264_ring_fb_list*, %struct.h264_ring_fb_list** %6, align 8
  %51 = getelementptr inbounds %struct.h264_ring_fb_list, %struct.h264_ring_fb_list* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @mtk_vcodec_err(%struct.vdec_h264_inst* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %43, i64 %46, i64 %49, i64 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_h264_inst*, i8*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
