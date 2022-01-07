; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_get_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@MMC_CAP2_NO_WRITE_PROTECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mmc_sd_get_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sd_get_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MMC_CAP2_NO_WRITE_PROTECT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.mmc_host*)**
  %18 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %17, align 8
  %19 = icmp ne i32 (%struct.mmc_host*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %31

21:                                               ; preds = %12
  %22 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.mmc_host*)**
  %27 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %26, align 8
  %28 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %29 = call i32 %27(%struct.mmc_host* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %21, %20, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
