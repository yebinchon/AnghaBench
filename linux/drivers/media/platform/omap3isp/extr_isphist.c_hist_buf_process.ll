; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_buf_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_buf_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i64, i64, i64, i32, %struct.omap3isp_hist_config* }
%struct.omap3isp_hist_config = type { i64 }

@ISPSTAT_ENABLED = common dso_local global i64 0, align 8
@STAT_NO_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispstat*)* @hist_buf_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_buf_process(%struct.ispstat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca %struct.omap3isp_hist_config*, align 8
  %5 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  %6 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %7 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %6, i32 0, i32 4
  %8 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %7, align 8
  store %struct.omap3isp_hist_config* %8, %struct.omap3isp_hist_config** %4, align 8
  %9 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %10 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %9, i32 0, i32 3
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %15 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ISPSTAT_ENABLED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %1
  %20 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %21 = call i32 @hist_reset_mem(%struct.ispstat* %20)
  %22 = load i32, i32* @STAT_NO_BUF, align 4
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %13
  %24 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %25 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @STAT_NO_BUF, align 4
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %23
  %32 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %33 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %38 = call i32 @hist_buf_dma(%struct.ispstat* %37)
  store i32 %38, i32* %5, align 4
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %41 = call i32 @hist_buf_pio(%struct.ispstat* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %4, align 8
  %44 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %47 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %29, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hist_reset_mem(%struct.ispstat*) #1

declare dso_local i32 @hist_buf_dma(%struct.ispstat*) #1

declare dso_local i32 @hist_buf_pio(%struct.ispstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
