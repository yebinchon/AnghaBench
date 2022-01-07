; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_data_end_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_data_end_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshsd_host = type { i64, %struct.TYPE_2__*, %struct.mmc_data* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Spurious data end IRQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Completed data request xfr=%d\0A\00", align 1
@SD_STOPINTERNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.toshsd_host*)* @toshsd_data_end_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshsd_data_end_irq(%struct.toshsd_host* %0) #0 {
  %2 = alloca %struct.toshsd_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  store %struct.toshsd_host* %0, %struct.toshsd_host** %2, align 8
  %4 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %5 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %4, i32 0, i32 2
  %6 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  store %struct.mmc_data* %6, %struct.mmc_data** %3, align 8
  %7 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %8 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %7, i32 0, i32 2
  store %struct.mmc_data* null, %struct.mmc_data** %8, align 8
  %9 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %10 = icmp ne %struct.mmc_data* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %13 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %52

17:                                               ; preds = %1
  %18 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %35

32:                                               ; preds = %17
  %33 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %22
  %36 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %37 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %41 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %45 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SD_STOPINTERNAL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @iowrite16(i32 0, i64 %48)
  %50 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %51 = call i32 @toshsd_finish_request(%struct.toshsd_host* %50)
  br label %52

52:                                               ; preds = %35, %11
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @toshsd_finish_request(%struct.toshsd_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
