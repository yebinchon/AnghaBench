; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vb2ops_vdec_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vb2ops_vdec_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.mtk_vcodec_ctx = type { i32 }
%struct.mtk_q_data = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"vq->type=%d err\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"[%d]\09 type = %d, get %d plane(s), %d buffer(s) of size 0x%x 0x%x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @vb2ops_vdec_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2ops_vdec_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.mtk_vcodec_ctx*, align 8
  %13 = alloca %struct.mtk_q_data*, align 8
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = call %struct.mtk_vcodec_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.mtk_vcodec_ctx* %16, %struct.mtk_vcodec_ctx** %12, align 8
  %17 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %12, align 8
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %19 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mtk_q_data* @mtk_vdec_get_q_data(%struct.mtk_vcodec_ctx* %17, i32 %20)
  store %struct.mtk_q_data* %21, %struct.mtk_q_data** %13, align 8
  %22 = load %struct.mtk_q_data*, %struct.mtk_q_data** %13, align 8
  %23 = icmp eq %struct.mtk_q_data* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %26 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %113

31:                                               ; preds = %5
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %14, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %14, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mtk_q_data*, %struct.mtk_q_data** %13, align 8
  %48 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ult i32 %46, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %113

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %14, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %36

62:                                               ; preds = %36
  br label %95

63:                                               ; preds = %31
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32*, i32** %9, align 8
  store i32 2, i32* %70, align 4
  br label %73

71:                                               ; preds = %63
  %72 = load i32*, i32** %9, align 8
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %69
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp ult i32 %75, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load %struct.mtk_q_data*, %struct.mtk_q_data** %13, align 8
  %81 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %14, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %14, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %74

94:                                               ; preds = %74
  br label %95

95:                                               ; preds = %94, %62
  %96 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %12, align 8
  %97 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %100 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @mtk_v4l2_debug(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %101, i32 %103, i32 %105, i32 %108, i32 %111)
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %95, %55, %24
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local %struct.mtk_vcodec_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.mtk_q_data* @mtk_vdec_get_q_data(%struct.mtk_vcodec_ctx*, i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, i32) #1

declare dso_local i32 @mtk_v4l2_debug(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
