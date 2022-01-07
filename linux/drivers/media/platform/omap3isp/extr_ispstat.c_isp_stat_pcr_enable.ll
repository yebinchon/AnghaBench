; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_pcr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_pcr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ispstat*, i64)* }

@ISPSTAT_ENABLING = common dso_local global i64 0, align 8
@ISPSTAT_ENABLED = common dso_local global i64 0, align 8
@ISPSTAT_DISABLING = common dso_local global i64 0, align 8
@ISPSTAT_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*, i64)* @isp_stat_pcr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_stat_pcr_enable(%struct.ispstat* %0, i64 %1) #0 {
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca i64, align 8
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %6 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ISPSTAT_ENABLING, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %12 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ISPSTAT_ENABLED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %55

20:                                               ; preds = %16, %10, %2
  %21 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %22 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.ispstat*, i64)*, i32 (%struct.ispstat*, i64)** %24, align 8
  %26 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 %25(%struct.ispstat* %26, i64 %27)
  %29 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %30 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ISPSTAT_DISABLING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %20
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @ISPSTAT_DISABLED, align 8
  %39 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %40 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %55

41:                                               ; preds = %34, %20
  %42 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %43 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ISPSTAT_ENABLING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* @ISPSTAT_ENABLED, align 8
  %52 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %53 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %47, %41
  br label %55

55:                                               ; preds = %19, %54, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
