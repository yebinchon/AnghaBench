; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usdhi6_host = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usdhi6_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usdhi6_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usdhi6_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.usdhi6_host* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.usdhi6_host* %5, %struct.usdhi6_host** %3, align 8
  %6 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %7 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mmc_remove_host(i32 %8)
  %10 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %11 = call i32 @usdhi6_mask_all(%struct.usdhi6_host* %10)
  %12 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %13 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %12, i32 0, i32 2
  %14 = call i32 @cancel_delayed_work_sync(i32* %13)
  %15 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %16 = call i32 @usdhi6_dma_release(%struct.usdhi6_host* %15)
  %17 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %18 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %22 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mmc_free_host(i32 %23)
  ret i32 0
}

declare dso_local %struct.usdhi6_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mmc_remove_host(i32) #1

declare dso_local i32 @usdhi6_mask_all(%struct.usdhi6_host*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @usdhi6_dma_release(%struct.usdhi6_host*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mmc_free_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
