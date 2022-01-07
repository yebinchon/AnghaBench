; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.coda_dev = type { i32, i32, i32, i32, i32 }
%struct.coda_ctx = type { i64, i32, %struct.TYPE_8__*, i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_7__*, i32, i64, i64 }
%struct.TYPE_8__ = type { i32 (%struct.coda_ctx*)*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"release instance (%p)\0A\00", align 1
@CODA_INST_DECODER = common dso_local global i64 0, align 8
@CODA_DX6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @coda_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.coda_dev*, align 8
  %4 = alloca %struct.coda_ctx*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.coda_dev* @video_drvdata(%struct.file* %5)
  store %struct.coda_dev* %6, %struct.coda_dev** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.coda_ctx* @fh_to_ctx(i32 %9)
  store %struct.coda_ctx* %10, %struct.coda_ctx** %4, align 8
  %11 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %12 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %13 = call i32 @coda_dbg(i32 1, %struct.coda_ctx* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.coda_ctx* %12)
  %14 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CODA_INST_DECODER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %20, i32 0, i32 10
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %26 = call i32 @coda_bit_stream_end_flag(%struct.coda_ctx* %25)
  br label %27

27:                                               ; preds = %24, %19, %1
  %28 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @v4l2_m2m_ctx_release(i32 %31)
  %33 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @vdoa_context_destroy(i64 %40)
  br label %42

42:                                               ; preds = %37, %27
  %43 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %51 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %53, i32 0, i32 8
  %55 = call i32 @queue_work(i32 %52, i32* %54)
  %56 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %56, i32 0, i32 8
  %58 = call i32 @flush_work(i32* %57)
  br label %59

59:                                               ; preds = %49, %42
  %60 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %60, i32 0, i32 7
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CODA_DX6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %71 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %71, i32 0, i32 6
  %73 = call i32 @coda_free_aux_buf(%struct.coda_dev* %70, i32* %72)
  br label %74

74:                                               ; preds = %69, %59
  %75 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %75, i32 0, i32 5
  %77 = call i32 @v4l2_ctrl_handler_free(i32* %76)
  %78 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %79 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @clk_disable_unprepare(i32 %80)
  %82 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %83 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @clk_disable_unprepare(i32 %84)
  %86 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %87 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pm_runtime_put_sync(i32 %88)
  %90 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %90, i32 0, i32 4
  %92 = call i32 @v4l2_fh_del(%struct.TYPE_9__* %91)
  %93 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %93, i32 0, i32 4
  %95 = call i32 @v4l2_fh_exit(%struct.TYPE_9__* %94)
  %96 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %97 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %96, i32 0, i32 0
  %98 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ida_free(i32* %97, i32 %100)
  %102 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %103 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32 (%struct.coda_ctx*)*, i32 (%struct.coda_ctx*)** %105, align 8
  %107 = icmp ne i32 (%struct.coda_ctx*)* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %74
  %109 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %110 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32 (%struct.coda_ctx*)*, i32 (%struct.coda_ctx*)** %112, align 8
  %114 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %115 = call i32 %113(%struct.coda_ctx* %114)
  br label %116

116:                                              ; preds = %108, %74
  %117 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %118 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @debugfs_remove_recursive(i32 %119)
  %121 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %122 = call i32 @kfree(%struct.coda_ctx* %121)
  ret i32 0
}

declare dso_local %struct.coda_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.coda_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @coda_dbg(i32, %struct.coda_ctx*, i8*, %struct.coda_ctx*) #1

declare dso_local i32 @coda_bit_stream_end_flag(%struct.coda_ctx*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @vdoa_context_destroy(i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @coda_free_aux_buf(%struct.coda_dev*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_9__*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @kfree(%struct.coda_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
