; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_reqbufs_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_reqbufs_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32 }
%struct.s5p_mfc_ctx = type { i64, i64, i64, i32 }
%struct.v4l2_requestbuffers = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"Freeing buffers\0A\00", align 1
@QUEUE_FREE = common dso_local global i64 0, align 8
@MFCINST_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Reqbufs called in an invalid state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Allocating %d buffers for OUTPUT queue\0A\00", align 1
@QUEUE_BUFS_REQUESTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Buffers have already been requested\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed allocating buffers for OUTPUT queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*, %struct.s5p_mfc_ctx*, %struct.v4l2_requestbuffers*)* @reqbufs_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reqbufs_output(%struct.s5p_mfc_dev* %0, %struct.s5p_mfc_ctx* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca %struct.s5p_mfc_ctx*, align 8
  %6 = alloca %struct.v4l2_requestbuffers*, align 8
  %7 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %4, align 8
  store %struct.s5p_mfc_ctx* %1, %struct.s5p_mfc_ctx** %5, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @s5p_mfc_clock_on()
  %9 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %15, i32 0, i32 3
  %17 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %18 = call i32 @vb2_reqbufs(i32* %16, %struct.v4l2_requestbuffers* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %85

22:                                               ; preds = %13
  %23 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* @QUEUE_FREE, align 8
  %26 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %84

28:                                               ; preds = %3
  %29 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @QUEUE_FREE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %28
  %35 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MFCINST_INIT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = call i32 @mfc_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %85

50:                                               ; preds = %34
  %51 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %55, i32 0, i32 3
  %57 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %58 = call i32 @vb2_reqbufs(i32* %56, %struct.v4l2_requestbuffers* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %85

62:                                               ; preds = %50
  %63 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %64 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %65 = call i32 @s5p_mfc_open_mfc_inst(%struct.s5p_mfc_dev* %63, %struct.s5p_mfc_ctx* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %70 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %71, i32 0, i32 3
  %73 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %74 = call i32 @vb2_reqbufs(i32* %72, %struct.v4l2_requestbuffers* %73)
  br label %85

75:                                               ; preds = %62
  %76 = load i64, i64* @QUEUE_BUFS_REQUESTED, align 8
  %77 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %83

79:                                               ; preds = %28
  %80 = call i32 @mfc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %22
  br label %85

85:                                               ; preds = %84, %68, %61, %46, %21
  %86 = call i32 (...) @s5p_mfc_clock_off()
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 @mfc_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %85
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @s5p_mfc_clock_on(...) #1

declare dso_local i32 @mfc_debug(i32, i8*, ...) #1

declare dso_local i32 @vb2_reqbufs(i32*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @s5p_mfc_open_mfc_inst(%struct.s5p_mfc_dev*, %struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_clock_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
