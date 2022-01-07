; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_dec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_dec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i8*, i8*, i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@V4L2_PIX_FMT_H264 = common dso_local global i32 0, align 4
@MFC_FMT_DEC = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12M = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12MT_16X16 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12MT = common dso_local global i32 0, align 4
@MFC_FMT_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Default src_fmt is %p, dest_fmt is %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_mfc_dec_init(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.v4l2_format, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %4 = load i32, i32* @V4L2_PIX_FMT_H264, align 4
  %5 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %3, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %4, i32* %7, align 4
  %8 = load i32, i32* @MFC_FMT_DEC, align 4
  %9 = call i8* @find_format(%struct.v4l2_format* %3, i32 %8)
  %10 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @IS_MFCV8_PLUS(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @V4L2_PIX_FMT_NV12M, align 4
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %3, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_MFCV6_PLUS(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* @V4L2_PIX_FMT_NV12MT_16X16, align 4
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %3, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %38

33:                                               ; preds = %22
  %34 = load i32, i32* @V4L2_PIX_FMT_NV12MT, align 4
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %17
  %40 = load i32, i32* @MFC_FMT_RAW, align 4
  %41 = call i8* @find_format(%struct.v4l2_format* %3, i32 %40)
  %42 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %49)
  ret void
}

declare dso_local i8* @find_format(%struct.v4l2_format*, i32) #1

declare dso_local i64 @IS_MFCV8_PLUS(i32) #1

declare dso_local i64 @IS_MFCV6_PLUS(i32) #1

declare dso_local i32 @mfc_debug(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
