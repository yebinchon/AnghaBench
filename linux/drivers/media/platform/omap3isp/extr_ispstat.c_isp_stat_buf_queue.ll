; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@STAT_NO_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: data wasn't properly written.\0A\00", align 1
@STAT_BUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispstat*)* @isp_stat_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_stat_buf_queue(%struct.ispstat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ispstat*, align 8
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  %4 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %5 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @STAT_NO_BUF, align 4
  store i32 %9, i32* %2, align 4
  br label %63

10:                                               ; preds = %1
  %11 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %12 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = call i32 @ktime_get_ts64(i32* %14)
  %16 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %17 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %20 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i32 %18, i32* %22, align 8
  %23 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %24 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %25 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i64 @isp_stat_buf_check_magic(%struct.ispstat* %23, %struct.TYPE_6__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %10
  %30 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %31 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %36 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @STAT_NO_BUF, align 4
  store i32 %40, i32* %2, align 4
  br label %63

41:                                               ; preds = %10
  %42 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %43 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %46 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %50 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %53 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 8
  %56 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %57 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %61 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %60, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %61, align 8
  %62 = load i32, i32* @STAT_BUF_DONE, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %41, %29, %8
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @ktime_get_ts64(i32*) #1

declare dso_local i64 @isp_stat_buf_check_magic(%struct.ispstat*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
