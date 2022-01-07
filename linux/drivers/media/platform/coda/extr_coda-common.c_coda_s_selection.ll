; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32, i32 }
%struct.coda_ctx = type { i32 }
%struct.coda_q_data = type { %struct.TYPE_2__, i32, i32 }

@CODA_INST_ENCODER = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SEL_FLAG_LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Setting crop rectangle: %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @coda_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.coda_ctx*, align 8
  %9 = alloca %struct.coda_q_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.coda_ctx* @fh_to_ctx(i8* %10)
  store %struct.coda_ctx* %11, %struct.coda_ctx** %8, align 8
  %12 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %130 [
    i32 129, label %15
    i32 128, label %125
    i32 130, label %125
  ]

15:                                               ; preds = %3
  %16 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CODA_INST_ENCODER, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %124

21:                                               ; preds = %15
  %22 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %124

27:                                               ; preds = %21
  %28 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %29 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %28, i32 %31)
  store %struct.coda_q_data* %32, %struct.coda_q_data** %9, align 8
  %33 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %34 = icmp ne %struct.coda_q_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %133

38:                                               ; preds = %27
  %39 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 0, i32* %44, align 8
  %45 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %50 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @clamp(i8* %48, i32 2, i32 %51)
  %53 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %61 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @clamp(i8* %59, i32 2, i32 %62)
  %64 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @V4L2_SEL_FLAG_LE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %38
  %74 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @round_up(i8* %77, i32 2)
  %79 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i8* %78, i8** %81, align 8
  %82 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @round_up(i8* %85, i32 2)
  %87 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  br label %107

90:                                               ; preds = %38
  %91 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @round_down(i8* %94, i32 2)
  %96 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i8* %95, i8** %98, align 8
  %99 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @round_down(i8* %102, i32 2)
  %104 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  br label %107

107:                                              ; preds = %90, %73
  %108 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %109 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %108, i32 0, i32 0
  %110 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %110, i32 0, i32 2
  %112 = bitcast %struct.TYPE_2__* %109 to i8*
  %113 = bitcast %struct.TYPE_2__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 24, i1 false)
  %114 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %115 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %120 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @coda_dbg(i32 1, %struct.coda_ctx* %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %118, i8* %122)
  store i32 0, i32* %4, align 4
  br label %133

124:                                              ; preds = %21, %15
  br label %125

125:                                              ; preds = %3, %3, %124
  %126 = load %struct.file*, %struct.file** %5, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %129 = call i32 @coda_g_selection(%struct.file* %126, i8* %127, %struct.v4l2_selection* %128)
  store i32 %129, i32* %4, align 4
  br label %133

130:                                              ; preds = %3
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %130, %125, %107, %35
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

declare dso_local i8* @clamp(i8*, i32, i32) #1

declare dso_local i8* @round_up(i8*, i32) #1

declare dso_local i8* @round_down(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @coda_dbg(i32, %struct.coda_ctx*, i8*, i8*, i8*) #1

declare dso_local i32 @coda_g_selection(%struct.file*, i8*, %struct.v4l2_selection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
