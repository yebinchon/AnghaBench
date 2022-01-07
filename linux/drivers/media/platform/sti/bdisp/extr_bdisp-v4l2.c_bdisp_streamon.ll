; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.bdisp_ctx = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@BDISP_SRC_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"src not defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@BDISP_DST_FMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"dst not defined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @bdisp_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bdisp_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.bdisp_ctx* @fh_to_ctx(i8* %9)
  store %struct.bdisp_ctx* %10, %struct.bdisp_ctx** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load i32, i32* @BDISP_SRC_FMT, align 4
  %16 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %17 = call i32 @bdisp_ctx_state_is_set(i32 %15, %struct.bdisp_ctx* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %54

28:                                               ; preds = %14, %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i32, i32* @BDISP_DST_FMT, align 4
  %34 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %35 = call i32 @bdisp_ctx_state_is_set(i32 %33, %struct.bdisp_ctx* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %54

46:                                               ; preds = %32, %28
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @v4l2_m2m_streamon(%struct.file* %47, i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %46, %37, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.bdisp_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @bdisp_ctx_state_is_set(i32, %struct.bdisp_ctx*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @v4l2_m2m_streamon(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
