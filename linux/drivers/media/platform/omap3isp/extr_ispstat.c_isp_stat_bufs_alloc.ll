; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_bufs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_bufs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.ispstat_buffer*, i64, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device*, i32 }
%struct.device = type { i32 }
%struct.ispstat_buffer = type { i32, i32, i32 }

@ISPSTAT_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: trying to allocate memory when busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STAT_MAX_BUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Failed to allocate DMA buffer %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: buffer[%u] allocated. dma=%pad virt=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispstat*, i64)* @isp_stat_bufs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_stat_bufs_alloc(%struct.ispstat* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ispstat_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %12 = call i64 @ISP_STAT_USES_DMAENGINE(%struct.ispstat* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %17 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi %struct.device* [ null, %14 ], [ %20, %15 ]
  store %struct.device* %22, %struct.device** %6, align 8
  %23 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %24 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %30 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %36 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %21
  %41 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %42 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  store i32 0, i32* %3, align 4
  br label %144

47:                                               ; preds = %21
  %48 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %49 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ISPSTAT_DISABLED, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %55 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %53, %47
  %59 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %60 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.device*, %struct.device** %62, align 8
  %64 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %65 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_info(%struct.device* %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %70 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %69, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %144

77:                                               ; preds = %53
  %78 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %79 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %85 = call i32 @isp_stat_bufs_free(%struct.ispstat* %84)
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %88 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %140, %77
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @STAT_MAX_BUFS, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %143

93:                                               ; preds = %89
  %94 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %95 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %94, i32 0, i32 4
  %96 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %96, i64 %98
  store %struct.ispstat_buffer* %99, %struct.ispstat_buffer** %9, align 8
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %9, align 8
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @isp_stat_bufs_alloc_one(%struct.device* %100, %struct.ispstat_buffer* %101, i64 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %93
  %107 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %108 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %107, i32 0, i32 3
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load %struct.device*, %struct.device** %110, align 8
  %112 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %113 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @dev_err(%struct.device* %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %119 = call i32 @isp_stat_bufs_free(%struct.ispstat* %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %144

121:                                              ; preds = %93
  %122 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %9, align 8
  %123 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %122, i32 0, i32 0
  store i32 1, i32* %123, align 4
  %124 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %125 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %124, i32 0, i32 3
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load %struct.device*, %struct.device** %127, align 8
  %129 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %130 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %9, align 8
  %135 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %134, i32 0, i32 2
  %136 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %9, align 8
  %137 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_dbg(%struct.device* %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %133, i32* %135, i32 %138)
  br label %140

140:                                              ; preds = %121
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %89

143:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %106, %58, %40
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @ISP_STAT_USES_DMAENGINE(%struct.ispstat*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @isp_stat_bufs_free(%struct.ispstat*) #1

declare dso_local i32 @isp_stat_bufs_alloc_one(%struct.device*, %struct.ispstat_buffer*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
