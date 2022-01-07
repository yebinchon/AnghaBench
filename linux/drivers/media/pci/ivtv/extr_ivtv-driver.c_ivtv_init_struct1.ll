; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_init_struct1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_init_struct1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%struct.ivtv = type { i32, i32, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, i32, i32, i32, i32, i32, %struct.TYPE_13__, i32, i32, %struct.TYPE_12__, i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@__const.ivtv_init_struct1.param = private unnamed_addr constant %struct.sched_param { i32 99 }, align 4
@kthread_worker_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not create ivtv task\0A\00", align 1
@SCHED_FIFO = common dso_local global i32 0, align 4
@ivtv_irq_work_handler = common dso_local global i32 0, align 4
@CX2341X_PORT_MEMORY = common dso_local global i32 0, align 4
@CX2341X_CAP_HAS_SLICED_VBI = common dso_local global i32 0, align 4
@ivtv_unfinished_dma = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@IVTV_DMA_SG_OSD_ENT = common dso_local global i32 0, align 4
@ivtv_yuv_mode = common dso_local global i32 0, align 4
@ivtv_yuv_threshold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*)* @ivtv_init_struct1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_init_struct1(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.sched_param, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  %5 = bitcast %struct.sched_param* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.sched_param* @__const.ivtv_init_struct1.param to i8*), i64 4, i1 false)
  %6 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 24
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pci_resource_start(i32 %8, i32 0)
  %10 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 25
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 23
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 2, i32* %14, align 8
  %15 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %16 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %15, i32 0, i32 22
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %19 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %18, i32 0, i32 21
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %22 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %21, i32 0, i32 20
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %25 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %29 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %28, i32 0, i32 19
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 18
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %35 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %34, i32 0, i32 17
  %36 = call i32 @kthread_init_worker(i32* %35)
  %37 = load i32, i32* @kthread_worker_fn, align 4
  %38 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %39 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %38, i32 0, i32 17
  %40 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %41 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %40, i32 0, i32 16
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kthread_run(i32 %37, i32* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %46 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %45, i32 0, i32 15
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %48 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %47, i32 0, i32 15
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %135

54:                                               ; preds = %1
  %55 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %56 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %55, i32 0, i32 15
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SCHED_FIFO, align 4
  %59 = call i32 @sched_setscheduler(i32 %57, i32 %58, %struct.sched_param* %4)
  %60 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %61 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %60, i32 0, i32 14
  %62 = load i32, i32* @ivtv_irq_work_handler, align 4
  %63 = call i32 @kthread_init_work(i32* %61, i32 %62)
  %64 = load i32, i32* @CX2341X_PORT_MEMORY, align 4
  %65 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %66 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %65, i32 0, i32 13
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @CX2341X_CAP_HAS_SLICED_VBI, align 4
  %69 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %70 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %69, i32 0, i32 13
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %73 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %72, i32 0, i32 12
  %74 = call i32 @init_waitqueue_head(i32* %73)
  %75 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %76 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %75, i32 0, i32 11
  %77 = call i32 @init_waitqueue_head(i32* %76)
  %78 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %79 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %78, i32 0, i32 10
  %80 = call i32 @init_waitqueue_head(i32* %79)
  %81 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %82 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %81, i32 0, i32 9
  %83 = call i32 @init_waitqueue_head(i32* %82)
  %84 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %85 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %84, i32 0, i32 8
  %86 = load i32, i32* @ivtv_unfinished_dma, align 4
  %87 = call i32 @timer_setup(i32* %85, i32 %86, i32 0)
  %88 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %89 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 8
  %90 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %91 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %90, i32 0, i32 1
  store i32 -1, i32* %91, align 4
  %92 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %93 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %92, i32 0, i32 2
  store i32 1000, i32* %93, align 8
  %94 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %95 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %96 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  %99 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %100 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %105 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  store i32* %103, i32** %106, align 8
  %107 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %108 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IVTV_DMA_SG_OSD_ENT, align 4
  %112 = call i32 @sg_init_table(i32 %110, i32 %111)
  %113 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %114 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %113, i32 0, i32 3
  store i32 1, i32* %114, align 4
  %115 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %116 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %115, i32 0, i32 4
  store i32 255, i32* %116, align 8
  %117 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %118 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 4
  %120 = call i32 @atomic_set(i32* %119, i32 -1)
  %121 = load i32, i32* @ivtv_yuv_mode, align 4
  %122 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %123 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @ivtv_yuv_threshold, align 4
  %126 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %127 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 4
  %129 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %130 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  store i32 3, i32* %131, align 4
  %132 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %133 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %54, %52
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pci_resource_start(i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @kthread_init_worker(i32*) #2

declare dso_local i32 @kthread_run(i32, i32*, i8*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @IVTV_ERR(i8*) #2

declare dso_local i32 @sched_setscheduler(i32, i32, %struct.sched_param*) #2

declare dso_local i32 @kthread_init_work(i32*, i32) #2

declare dso_local i32 @init_waitqueue_head(i32*) #2

declare dso_local i32 @timer_setup(i32*, i32, i32) #2

declare dso_local i32 @sg_init_table(i32, i32) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
