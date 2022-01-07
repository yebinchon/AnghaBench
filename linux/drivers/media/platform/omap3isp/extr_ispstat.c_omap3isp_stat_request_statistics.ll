; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_request_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_request_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.omap3isp_stat_data = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ispstat_buffer = type { i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@ISPSTAT_ENABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s: engine not enabled.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_stat_request_statistics(%struct.ispstat* %0, %struct.omap3isp_stat_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca %struct.omap3isp_stat_data*, align 8
  %6 = alloca %struct.ispstat_buffer*, align 8
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store %struct.omap3isp_stat_data* %1, %struct.omap3isp_stat_data** %5, align 8
  %7 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %8 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ISPSTAT_ENABLED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %14 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %19 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %27 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %30 = load %struct.omap3isp_stat_data*, %struct.omap3isp_stat_data** %5, align 8
  %31 = call %struct.ispstat_buffer* @isp_stat_buf_get(%struct.ispstat* %29, %struct.omap3isp_stat_data* %30)
  store %struct.ispstat_buffer* %31, %struct.ispstat_buffer** %6, align 8
  %32 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %33 = call i64 @IS_ERR(%struct.ispstat_buffer* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %37 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %40 = call i32 @PTR_ERR(%struct.ispstat_buffer* %39)
  store i32 %40, i32* %3, align 4
  br label %80

41:                                               ; preds = %25
  %42 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.omap3isp_stat_data*, %struct.omap3isp_stat_data** %5, align 8
  %47 = getelementptr inbounds %struct.omap3isp_stat_data, %struct.omap3isp_stat_data* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NSEC_PER_USEC, align 4
  %54 = sdiv i32 %52, %53
  %55 = load %struct.omap3isp_stat_data*, %struct.omap3isp_stat_data** %5, align 8
  %56 = getelementptr inbounds %struct.omap3isp_stat_data, %struct.omap3isp_stat_data* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.omap3isp_stat_data*, %struct.omap3isp_stat_data** %5, align 8
  %62 = getelementptr inbounds %struct.omap3isp_stat_data, %struct.omap3isp_stat_data* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.omap3isp_stat_data*, %struct.omap3isp_stat_data** %5, align 8
  %67 = getelementptr inbounds %struct.omap3isp_stat_data, %struct.omap3isp_stat_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.omap3isp_stat_data*, %struct.omap3isp_stat_data** %5, align 8
  %72 = getelementptr inbounds %struct.omap3isp_stat_data, %struct.omap3isp_stat_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %74 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %76 = call i32 @isp_stat_buf_release(%struct.ispstat* %75)
  %77 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %78 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %41, %35, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ispstat_buffer* @isp_stat_buf_get(%struct.ispstat*, %struct.omap3isp_stat_data*) #1

declare dso_local i64 @IS_ERR(%struct.ispstat_buffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.ispstat_buffer*) #1

declare dso_local i32 @isp_stat_buf_release(%struct.ispstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
