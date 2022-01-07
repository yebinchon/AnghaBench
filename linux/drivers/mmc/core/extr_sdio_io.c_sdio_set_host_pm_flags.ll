; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_set_host_pm_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_set_host_pm_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_host* }
%struct.mmc_host = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_set_host_pm_flags(%struct.sdio_func* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_host*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %8 = icmp ne %struct.sdio_func* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %14 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mmc_host*, %struct.mmc_host** %16, align 8
  store %struct.mmc_host* %17, %struct.mmc_host** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %12
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %31 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %25, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
