; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.pvr2_v4l2_fh*, %struct.TYPE_18__, i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_18__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.TYPE_10__ = type { %struct.pvr2_v4l2* }
%struct.pvr2_v4l2 = type { %struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.pvr2_stream = type { i32 }

@PVR2_TRACE_OPEN_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pvr2_v4l2_release\00", align 1
@PVR2_TRACE_STRUCT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Destroying pvr_v4l2_fh id=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @pvr2_v4l2_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_v4l2_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.pvr2_v4l2_fh*, align 8
  %4 = alloca %struct.pvr2_v4l2*, align 8
  %5 = alloca %struct.pvr2_hdw*, align 8
  %6 = alloca %struct.pvr2_stream*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  store %struct.pvr2_v4l2_fh* %9, %struct.pvr2_v4l2_fh** %3, align 8
  %10 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %11 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %10, i32 0, i32 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %13, align 8
  store %struct.pvr2_v4l2* %14, %struct.pvr2_v4l2** %4, align 8
  %15 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %16 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  store %struct.pvr2_hdw* %20, %struct.pvr2_hdw** %5, align 8
  %21 = load i32, i32* @PVR2_TRACE_OPEN_CLOSE, align 4
  %22 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %24 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %1
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %29 = call i32 @pvr2_hdw_set_streaming(%struct.pvr2_hdw* %28, i32 0)
  %30 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %31 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call %struct.pvr2_stream* @pvr2_ioread_get_stream(i32* %32)
  store %struct.pvr2_stream* %33, %struct.pvr2_stream** %6, align 8
  %34 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %35 = icmp ne %struct.pvr2_stream* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %38 = call i32 @pvr2_stream_set_callback(%struct.pvr2_stream* %37, i32* null, i32* null)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %41 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @pvr2_ioread_destroy(i32* %42)
  %44 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %45 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %1
  %47 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %48 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %47, i32 0, i32 2
  %49 = call i32 @v4l2_fh_del(i32* %48)
  %50 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %51 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %50, i32 0, i32 2
  %52 = call i32 @v4l2_fh_exit(i32* %51)
  %53 = load %struct.file*, %struct.file** %2, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  store %struct.pvr2_v4l2_fh* null, %struct.pvr2_v4l2_fh** %54, align 8
  %55 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %55, i32 0, i32 1
  %57 = call i32 @pvr2_channel_done(%struct.TYPE_18__* %56)
  %58 = load i32, i32* @PVR2_TRACE_STRUCT, align 4
  %59 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %60 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.pvr2_v4l2_fh* %59)
  %61 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %62 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %61, i32 0, i32 0
  %63 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %62, align 8
  %64 = icmp ne %struct.pvr2_v4l2_fh* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %46
  %66 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %67 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %66, i32 0, i32 0
  %68 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %67, align 8
  %69 = call i32 @kfree(%struct.pvr2_v4l2_fh* %68)
  %70 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %71 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %70, i32 0, i32 0
  store %struct.pvr2_v4l2_fh* null, %struct.pvr2_v4l2_fh** %71, align 8
  br label %72

72:                                               ; preds = %65, %46
  %73 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %74 = call i32 @kfree(%struct.pvr2_v4l2_fh* %73)
  %75 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %76 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %72
  %83 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %84 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %83, i32 0, i32 1
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = call i64 @list_empty(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %92 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %91, i32 0, i32 0
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = call i64 @list_empty(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %100 = call i32 @pvr2_v4l2_destroy_no_lock(%struct.pvr2_v4l2* %99)
  br label %101

101:                                              ; preds = %98, %90, %82, %72
  ret i32 0
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @pvr2_hdw_set_streaming(%struct.pvr2_hdw*, i32) #1

declare dso_local %struct.pvr2_stream* @pvr2_ioread_get_stream(i32*) #1

declare dso_local i32 @pvr2_stream_set_callback(%struct.pvr2_stream*, i32*, i32*) #1

declare dso_local i32 @pvr2_ioread_destroy(i32*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @pvr2_channel_done(%struct.TYPE_18__*) #1

declare dso_local i32 @kfree(%struct.pvr2_v4l2_fh*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pvr2_v4l2_destroy_no_lock(%struct.pvr2_v4l2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
