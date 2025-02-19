; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_tasklet_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_tasklet_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i64, i32, i32, i32 }
%struct.mmc_data = type { i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@WBSD_IDX_FIFOEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @wbsd_tasklet_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_tasklet_fifo(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.wbsd_host*
  store %struct.wbsd_host* %6, %struct.wbsd_host** %3, align 8
  %7 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %8 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %11 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %17 = call %struct.mmc_data* @wbsd_get_data(%struct.wbsd_host* %16)
  store %struct.mmc_data* %17, %struct.mmc_data** %4, align 8
  %18 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %19 = icmp ne %struct.mmc_data* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %47

21:                                               ; preds = %15
  %22 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MMC_DATA_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %30 = call i32 @wbsd_fill_fifo(%struct.wbsd_host* %29)
  br label %34

31:                                               ; preds = %21
  %32 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %33 = call i32 @wbsd_empty_fifo(%struct.wbsd_host* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %36 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %41 = load i32, i32* @WBSD_IDX_FIFOEN, align 4
  %42 = call i32 @wbsd_write_index(%struct.wbsd_host* %40, i32 %41, i32 0)
  %43 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %44 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %43, i32 0, i32 2
  %45 = call i32 @tasklet_schedule(i32* %44)
  br label %46

46:                                               ; preds = %39, %34
  br label %47

47:                                               ; preds = %46, %20, %14
  %48 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %49 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock(i32* %49)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mmc_data* @wbsd_get_data(%struct.wbsd_host*) #1

declare dso_local i32 @wbsd_fill_fifo(%struct.wbsd_host*) #1

declare dso_local i32 @wbsd_empty_fifo(%struct.wbsd_host*) #1

declare dso_local i32 @wbsd_write_index(%struct.wbsd_host*, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
