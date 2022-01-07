; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.vpe_ctx = type { i32 }
%struct.vpe_q_data = type { i32, i32, %struct.TYPE_2__ }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vpe_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpe_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.vpe_ctx*, align 8
  %9 = alloca %struct.vpe_q_data*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vpe_ctx* @file2ctx(%struct.file* %11)
  store %struct.vpe_ctx* %12, %struct.vpe_ctx** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %115

27:                                               ; preds = %18, %3
  %28 = load %struct.vpe_ctx*, %struct.vpe_ctx** %8, align 8
  %29 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx* %28, i32 %31)
  store %struct.vpe_q_data* %32, %struct.vpe_q_data** %9, align 8
  %33 = load %struct.vpe_q_data*, %struct.vpe_q_data** %9, align 8
  %34 = icmp ne %struct.vpe_q_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %115

38:                                               ; preds = %27
  %39 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %82 [
    i32 131, label %42
    i32 132, label %42
    i32 129, label %52
    i32 128, label %52
    i32 133, label %62
    i32 130, label %72
  ]

42:                                               ; preds = %38, %38
  %43 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %115

51:                                               ; preds = %42
  br label %85

52:                                               ; preds = %38, %38
  %53 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %115

61:                                               ; preds = %52
  br label %85

62:                                               ; preds = %38
  %63 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %115

71:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %85

72:                                               ; preds = %38
  %73 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %115

81:                                               ; preds = %72
  store i32 1, i32* %10, align 4
  br label %85

82:                                               ; preds = %38
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %115

85:                                               ; preds = %81, %71, %61, %51
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %89, i32 0, i32 1
  %91 = load %struct.vpe_q_data*, %struct.vpe_q_data** %9, align 8
  %92 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %91, i32 0, i32 2
  %93 = bitcast %struct.TYPE_2__* %90 to i8*
  %94 = bitcast %struct.TYPE_2__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false)
  br label %114

95:                                               ; preds = %85
  %96 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.vpe_q_data*, %struct.vpe_q_data** %9, align 8
  %103 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  %108 = load %struct.vpe_q_data*, %struct.vpe_q_data** %9, align 8
  %109 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  br label %114

114:                                              ; preds = %95, %88
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %82, %78, %68, %58, %48, %35, %24
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.vpe_ctx* @file2ctx(%struct.file*) #1

declare dso_local %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
