; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c___isp_stat_buf_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c___isp_stat_buf_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat_buffer = type { i64, i64 }
%struct.ispstat = type { %struct.ispstat_buffer*, %struct.ispstat_buffer*, %struct.ispstat_buffer* }

@STAT_MAX_BUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ispstat_buffer* (%struct.ispstat*, i32)* @__isp_stat_buf_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ispstat_buffer* @__isp_stat_buf_find(%struct.ispstat* %0, i32 %1) #0 {
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ispstat_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ispstat_buffer*, align 8
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.ispstat_buffer* null, %struct.ispstat_buffer** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %62, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @STAT_MAX_BUFS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %65

12:                                               ; preds = %8
  %13 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %14 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %13, i32 0, i32 2
  %15 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %15, i64 %17
  store %struct.ispstat_buffer* %18, %struct.ispstat_buffer** %7, align 8
  %19 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %7, align 8
  %20 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %21 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %20, i32 0, i32 1
  %22 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %21, align 8
  %23 = icmp eq %struct.ispstat_buffer* %19, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %12
  %25 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %7, align 8
  %26 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %27 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %26, i32 0, i32 0
  %28 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %27, align 8
  %29 = icmp eq %struct.ispstat_buffer* %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %12
  br label %62

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %7, align 8
  %36 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %62

40:                                               ; preds = %34, %31
  %41 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %7, align 8
  %42 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %7, align 8
  store %struct.ispstat_buffer* %46, %struct.ispstat_buffer** %5, align 8
  br label %65

47:                                               ; preds = %40
  %48 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %49 = icmp ne %struct.ispstat_buffer* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %7, align 8
  %52 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50, %47
  %60 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %7, align 8
  store %struct.ispstat_buffer* %60, %struct.ispstat_buffer** %5, align 8
  br label %61

61:                                               ; preds = %59, %50
  br label %62

62:                                               ; preds = %61, %39, %30
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %8

65:                                               ; preds = %45, %8
  %66 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  ret %struct.ispstat_buffer* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
