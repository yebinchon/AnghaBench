; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_tasklet_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_tasklet_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32, i32 }
%struct.mmc_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @wbsd_tasklet_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_tasklet_finish(i64 %0) #0 {
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
  %11 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %18 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %24 = call %struct.mmc_data* @wbsd_get_data(%struct.wbsd_host* %23)
  store %struct.mmc_data* %24, %struct.mmc_data** %4, align 8
  %25 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %26 = icmp ne %struct.mmc_data* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %32

28:                                               ; preds = %22
  %29 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %30 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %31 = call i32 @wbsd_finish_data(%struct.wbsd_host* %29, %struct.mmc_data* %30)
  br label %32

32:                                               ; preds = %28, %27, %21
  %33 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %34 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.mmc_data* @wbsd_get_data(%struct.wbsd_host*) #1

declare dso_local i32 @wbsd_finish_data(%struct.wbsd_host*, %struct.mmc_data*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
