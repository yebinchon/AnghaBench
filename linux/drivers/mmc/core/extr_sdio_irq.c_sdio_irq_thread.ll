; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%struct.mmc_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*, i32)* }

@__const.sdio_irq_thread.param = private unnamed_addr constant %struct.sched_param { i32 1 }, align 4
@current = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"%s: IRQ thread started (poll period = %lu jiffies)\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: IRQ thread exiting with code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sdio_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_irq_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.sched_param, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mmc_host*
  store %struct.mmc_host* %9, %struct.mmc_host** %3, align 8
  %10 = bitcast %struct.sched_param* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.sched_param* @__const.sdio_irq_thread.param to i8*), i64 4, i1 false)
  %11 = load i32, i32* @current, align 4
  %12 = load i32, i32* @SCHED_FIFO, align 4
  %13 = call i32 @sched_setscheduler(i32 %11, i32 %12, %struct.sched_param* %4)
  %14 = call i64 @msecs_to_jiffies(i32 10)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  br label %25

23:                                               ; preds = %1
  %24 = load i64, i64* %6, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %5, align 8
  %27 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %28 = call i32 @mmc_hostname(%struct.mmc_host* %27)
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %107, %25
  %33 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %34 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 2
  %36 = call i32 @__mmc_claim_host(%struct.mmc_host* %33, i32* null, i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %111

40:                                               ; preds = %32
  %41 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %42 = call i32 @process_sdio_pending_irqs(%struct.mmc_host* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %44 = call i32 @mmc_release_host(%struct.mmc_host* %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %49 = call i32 @set_current_state(i32 %48)
  %50 = call i32 (...) @kthread_should_stop()
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @HZ, align 8
  %54 = call i32 @schedule_timeout(i64 %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* @TASK_RUNNING, align 4
  %57 = call i32 @set_current_state(i32 %56)
  br label %58

58:                                               ; preds = %55, %40
  %59 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* %5, align 8
  %70 = udiv i64 %69, 2
  store i64 %70, i64* %5, align 8
  br label %80

71:                                               ; preds = %65
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %77, %71
  br label %80

80:                                               ; preds = %79, %68
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %83 = call i32 @set_current_state(i32 %82)
  %84 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %85 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %92 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %94, align 8
  %96 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %97 = call i32 %95(%struct.mmc_host* %96, i32 1)
  br label %98

98:                                               ; preds = %90, %81
  %99 = call i32 (...) @kthread_should_stop()
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @schedule_timeout(i64 %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* @TASK_RUNNING, align 4
  %106 = call i32 @set_current_state(i32 %105)
  br label %107

107:                                              ; preds = %104
  %108 = call i32 (...) @kthread_should_stop()
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %32, label %111

111:                                              ; preds = %107, %39
  %112 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %113 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %120 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %122, align 8
  %124 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %125 = call i32 %123(%struct.mmc_host* %124, i32 0)
  br label %126

126:                                              ; preds = %118, %111
  %127 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %128 = call i32 @mmc_hostname(%struct.mmc_host* %127)
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sched_setscheduler(i32, i32, %struct.sched_param*) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i32 @pr_debug(i8*, i32, i32) #2

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #2

declare dso_local i32 @__mmc_claim_host(%struct.mmc_host*, i32*, i32*) #2

declare dso_local i32 @process_sdio_pending_irqs(%struct.mmc_host*) #2

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #2

declare dso_local i32 @set_current_state(i32) #2

declare dso_local i32 @kthread_should_stop(...) #2

declare dso_local i32 @schedule_timeout(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
