; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.bdisp_frame = type { i32, i32, %struct.TYPE_3__ }
%struct.bdisp_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid frame (%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid target\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Invalid type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @bdisp_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.bdisp_frame*, align 8
  %9 = alloca %struct.bdisp_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.bdisp_ctx* @fh_to_ctx(i8* %10)
  store %struct.bdisp_ctx* %11, %struct.bdisp_ctx** %9, align 8
  %12 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %9, align 8
  %13 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.bdisp_frame* @ctx_get_frame(%struct.bdisp_ctx* %12, i32 %15)
  store %struct.bdisp_frame* %16, %struct.bdisp_frame** %8, align 8
  %17 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %18 = call i64 @IS_ERR(%struct.bdisp_frame* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.bdisp_frame* %26)
  %28 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %29 = call i32 @PTR_ERR(%struct.bdisp_frame* %28)
  store i32 %29, i32* %4, align 4
  br label %124

30:                                               ; preds = %3
  %31 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %114 [
    i32 135, label %34
    i32 136, label %74
  ]

34:                                               ; preds = %30
  %35 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %64 [
    i32 130, label %38
    i32 128, label %45
    i32 129, label %45
  ]

38:                                               ; preds = %34
  %39 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %39, i32 0, i32 0
  %41 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %42 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %41, i32 0, i32 2
  %43 = bitcast %struct.TYPE_3__* %40 to i8*
  %44 = bitcast %struct.TYPE_3__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 16, i1 false)
  br label %73

45:                                               ; preds = %34, %34
  %46 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  %52 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %53 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %59 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %73

64:                                               ; preds = %34
  %65 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %9, align 8
  %66 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %124

73:                                               ; preds = %45, %38
  br label %123

74:                                               ; preds = %30
  %75 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %104 [
    i32 134, label %78
    i32 131, label %78
    i32 132, label %85
    i32 133, label %85
  ]

78:                                               ; preds = %74, %74
  %79 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %79, i32 0, i32 0
  %81 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %82 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %81, i32 0, i32 2
  %83 = bitcast %struct.TYPE_3__* %80 to i8*
  %84 = bitcast %struct.TYPE_3__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 16, i1 false)
  br label %113

85:                                               ; preds = %74, %74
  %86 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  store i32 0, i32* %88, align 4
  %89 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  store i32 0, i32* %91, align 4
  %92 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %93 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %99 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  br label %113

104:                                              ; preds = %74
  %105 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %9, align 8
  %106 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, ...) @dev_err(i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %124

113:                                              ; preds = %85, %78
  br label %123

114:                                              ; preds = %30
  %115 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %9, align 8
  %116 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %124

123:                                              ; preds = %113, %73
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %114, %104, %64, %20
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.bdisp_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.bdisp_frame* @ctx_get_frame(%struct.bdisp_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bdisp_frame*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.bdisp_frame*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
