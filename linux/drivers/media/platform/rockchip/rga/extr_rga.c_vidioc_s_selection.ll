; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.rga_ctx = type { %struct.rockchip_rga* }
%struct.rockchip_rga = type { i32 }
%struct.rga_frame = type { i64, i64, %struct.TYPE_2__ }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"doesn't support negative values for top & left.\0A\00", align 1
@MIN_WIDTH = common dso_local global i64 0, align 8
@MIN_HEIGHT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"unsupported crop value.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vidioc_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.rga_ctx*, align 8
  %9 = alloca %struct.rockchip_rga*, align 8
  %10 = alloca %struct.rga_frame*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.rga_ctx*
  store %struct.rga_ctx* %13, %struct.rga_ctx** %8, align 8
  %14 = load %struct.rga_ctx*, %struct.rga_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %14, i32 0, i32 0
  %16 = load %struct.rockchip_rga*, %struct.rockchip_rga** %15, align 8
  store %struct.rockchip_rga* %16, %struct.rockchip_rga** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.rga_ctx*, %struct.rga_ctx** %8, align 8
  %18 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.rga_frame* @rga_get_frame(%struct.rga_ctx* %17, i32 %20)
  store %struct.rga_frame* %21, %struct.rga_frame** %10, align 8
  %22 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %23 = call i64 @IS_ERR(%struct.rga_frame* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %27 = call i32 @PTR_ERR(%struct.rga_frame* %26)
  store i32 %27, i32* %4, align 4
  br label %131

28:                                               ; preds = %3
  %29 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %52 [
    i32 129, label %32
    i32 128, label %42
  ]

32:                                               ; preds = %28
  %33 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %131

41:                                               ; preds = %32
  br label %55

42:                                               ; preds = %28
  %43 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %131

51:                                               ; preds = %42
  br label %55

52:                                               ; preds = %28
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %131

55:                                               ; preds = %51, %41
  %56 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61, %55
  %68 = load i32, i32* @debug, align 4
  %69 = load %struct.rockchip_rga*, %struct.rockchip_rga** %9, align 8
  %70 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %69, i32 0, i32 0
  %71 = call i32 @v4l2_dbg(i32 %68, i32 1, i32* %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %131

74:                                               ; preds = %61
  %75 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %78, %82
  %84 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %85 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %116, label %88

88:                                               ; preds = %74
  %89 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %92, %96
  %98 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %99 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %116, label %102

102:                                              ; preds = %88
  %103 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MIN_WIDTH, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MIN_HEIGHT, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %109, %102, %88, %74
  %117 = load i32, i32* @debug, align 4
  %118 = load %struct.rockchip_rga*, %struct.rockchip_rga** %9, align 8
  %119 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %118, i32 0, i32 0
  %120 = call i32 @v4l2_dbg(i32 %117, i32 1, i32* %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %131

123:                                              ; preds = %109
  %124 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %125 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %124, i32 0, i32 2
  %126 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %127 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %126, i32 0, i32 1
  %128 = bitcast %struct.TYPE_2__* %125 to i8*
  %129 = bitcast %struct.TYPE_2__* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 32, i1 false)
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %123, %116, %67, %52, %48, %38, %25
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.rga_frame* @rga_get_frame(%struct.rga_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rga_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.rga_frame*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
