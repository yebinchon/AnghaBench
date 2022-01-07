; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_bufs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_bufs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.ispstat_buffer* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ispstat_buffer = type { i32, i32*, i64, i32 }

@STAT_MAX_BUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: all buffers were freed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*)* @isp_stat_bufs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_stat_bufs_free(%struct.ispstat* %0) #0 {
  %2 = alloca %struct.ispstat*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ispstat_buffer*, align 8
  store %struct.ispstat* %0, %struct.ispstat** %2, align 8
  %6 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %7 = call i64 @ISP_STAT_USES_DMAENGINE(%struct.ispstat* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %12 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  br label %16

16:                                               ; preds = %10, %9
  %17 = phi %struct.device* [ null, %9 ], [ %15, %10 ]
  store %struct.device* %17, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %55, %16
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @STAT_MAX_BUFS, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %24 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %23, i32 0, i32 4
  %25 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %25, i64 %27
  store %struct.ispstat_buffer* %28, %struct.ispstat_buffer** %5, align 8
  %29 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %55

34:                                               ; preds = %22
  %35 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %35, i32 0, i32 3
  %37 = call i32 @sg_free_table(i32* %36)
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %40 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dma_free_coherent(%struct.device* %38, i32 %41, i32* %44, i64 %47)
  %49 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %52 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %34, %33
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %18

58:                                               ; preds = %18
  %59 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %60 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.device*, %struct.device** %62, align 8
  %64 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %65 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %70 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %69, i32 0, i32 1
  store i32 0, i32* %70, align 8
  %71 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %72 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  ret void
}

declare dso_local i64 @ISP_STAT_USES_DMAENGINE(%struct.ispstat*) #1

declare dso_local i32 @sg_free_table(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
