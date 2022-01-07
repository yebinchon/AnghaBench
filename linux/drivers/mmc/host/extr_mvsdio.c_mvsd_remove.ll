; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mvsdio.c_mvsd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mvsdio.c_mvsd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.mvsd_host = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvsd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsd_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mvsd_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mmc_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.mvsd_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.mvsd_host* %8, %struct.mvsd_host** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call i32 @mmc_remove_host(%struct.mmc_host* %9)
  %11 = load %struct.mvsd_host*, %struct.mvsd_host** %4, align 8
  %12 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %11, i32 0, i32 1
  %13 = call i32 @del_timer_sync(i32* %12)
  %14 = load %struct.mvsd_host*, %struct.mvsd_host** %4, align 8
  %15 = call i32 @mvsd_power_down(%struct.mvsd_host* %14)
  %16 = load %struct.mvsd_host*, %struct.mvsd_host** %4, align 8
  %17 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IS_ERR(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.mvsd_host*, %struct.mvsd_host** %4, align 8
  %23 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %28 = call i32 @mmc_free_host(%struct.mmc_host* %27)
  ret i32 0
}

declare dso_local %struct.mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mvsd_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mvsd_power_down(%struct.mvsd_host*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
