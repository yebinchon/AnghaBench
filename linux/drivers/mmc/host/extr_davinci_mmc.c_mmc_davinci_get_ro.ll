; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_get_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.davinci_mmc_config* }
%struct.davinci_mmc_config = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mmc_davinci_get_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_davinci_get_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.davinci_mmc_config*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.platform_device* @to_platform_device(i32 %8)
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %12, align 8
  store %struct.davinci_mmc_config* %13, %struct.davinci_mmc_config** %5, align 8
  %14 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %15 = icmp ne %struct.davinci_mmc_config* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %18 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %23 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %24(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %16, %1
  %30 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %31 = call i32 @mmc_gpio_get_ro(%struct.mmc_host* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @mmc_gpio_get_ro(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
