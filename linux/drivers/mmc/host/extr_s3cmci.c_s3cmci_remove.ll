; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_host = type { i32 }
%struct.s3cmci_host = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3cmci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3cmci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.s3cmci_host*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.mmc_host* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.mmc_host* %7, %struct.mmc_host** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.s3cmci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.s3cmci_host* %9, %struct.s3cmci_host** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = call i32 @s3cmci_shutdown(%struct.platform_device* %10)
  %12 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %13 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_put(i32 %14)
  %16 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %17 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %16, i32 0, i32 4
  %18 = call i32 @tasklet_disable(i32* %17)
  %19 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %20 = call i64 @s3cmci_host_usedma(%struct.s3cmci_host* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %24 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_release_channel(i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %29 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %32 = call i32 @free_irq(i32 %30, %struct.s3cmci_host* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %27
  %39 = call i32 @S3C2410_GPE(i32 5)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %47, %38
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @S3C2410_GPE(i32 10)
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @gpio_free(i32 %45)
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %40

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %53 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @iounmap(i32 %54)
  %56 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %57 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %62 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i32 @resource_size(%struct.TYPE_4__* %63)
  %65 = call i32 @release_mem_region(i32 %60, i32 %64)
  %66 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %67 = call i32 @mmc_free_host(%struct.mmc_host* %66)
  ret i32 0
}

declare dso_local %struct.mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.s3cmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @s3cmci_shutdown(%struct.platform_device*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i64 @s3cmci_host_usedma(%struct.s3cmci_host*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @free_irq(i32, %struct.s3cmci_host*) #1

declare dso_local i32 @S3C2410_GPE(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_4__*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
