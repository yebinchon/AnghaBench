; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.goldfish_mmc_host = type { i32, i32, i32, i32 }
%struct.mmc_host = type { i32 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @goldfish_mmc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_mmc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.goldfish_mmc_host*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.goldfish_mmc_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.goldfish_mmc_host* %6, %struct.goldfish_mmc_host** %3, align 8
  %7 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %8 = call %struct.mmc_host* @mmc_from_priv(%struct.goldfish_mmc_host* %7)
  store %struct.mmc_host* %8, %struct.mmc_host** %4, align 8
  %9 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %10 = icmp eq %struct.goldfish_mmc_host* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %14 = call i32 @mmc_remove_host(%struct.mmc_host* %13)
  %15 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.goldfish_mmc_host* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @BUFFER_SIZE, align 4
  %23 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dma_free_coherent(i32* %21, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %31 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iounmap(i32 %32)
  %34 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %35 = call i32 @mmc_free_host(%struct.mmc_host* %34)
  ret i32 0
}

declare dso_local %struct.goldfish_mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mmc_host* @mmc_from_priv(%struct.goldfish_mmc_host*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @free_irq(i32, %struct.goldfish_mmc_host*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
