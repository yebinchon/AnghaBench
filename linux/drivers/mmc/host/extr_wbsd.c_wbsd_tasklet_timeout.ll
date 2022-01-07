; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_tasklet_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_tasklet_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32, i32, i32 }
%struct.mmc_data = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @wbsd_tasklet_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_tasklet_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.wbsd_host*
  store %struct.wbsd_host* %6, %struct.wbsd_host** %3, align 8
  %7 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %8 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %11 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %17 = call %struct.mmc_data* @wbsd_get_data(%struct.wbsd_host* %16)
  store %struct.mmc_data* %17, %struct.mmc_data** %4, align 8
  %18 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %19 = icmp ne %struct.mmc_data* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %30

21:                                               ; preds = %15
  %22 = call i32 @DBGF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  %25 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %28 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %27, i32 0, i32 1
  %29 = call i32 @tasklet_schedule(i32* %28)
  br label %30

30:                                               ; preds = %21, %20, %14
  %31 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %32 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mmc_data* @wbsd_get_data(%struct.wbsd_host*) #1

declare dso_local i32 @DBGF(i8*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
