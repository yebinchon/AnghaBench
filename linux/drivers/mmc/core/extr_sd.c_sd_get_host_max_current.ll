; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_sd_get_host_max_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_sd_get_host_max_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @sd_get_host_max_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_get_host_max_current(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 1, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %23 [
    i32 132, label %11
    i32 131, label %15
    i32 130, label %15
    i32 129, label %19
    i32 128, label %19
  ]

11:                                               ; preds = %1
  %12 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  br label %24

15:                                               ; preds = %1, %1
  %16 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %1, %1
  %20 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %21 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %19, %15, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
