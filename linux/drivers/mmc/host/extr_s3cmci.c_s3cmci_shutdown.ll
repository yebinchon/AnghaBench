; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.s3cmci_host = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @s3cmci_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3cmci_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.s3cmci_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mmc_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.s3cmci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.s3cmci_host* %8, %struct.s3cmci_host** %4, align 8
  %9 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %10 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %15 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %18 = call i32 @free_irq(i64 %16, %struct.s3cmci_host* %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %21 = call i32 @s3cmci_debugfs_remove(%struct.s3cmci_host* %20)
  %22 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %23 = call i32 @s3cmci_cpufreq_deregister(%struct.s3cmci_host* %22)
  %24 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %25 = call i32 @mmc_remove_host(%struct.mmc_host* %24)
  %26 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %27 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_disable_unprepare(i32 %28)
  ret void
}

declare dso_local %struct.mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.s3cmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @free_irq(i64, %struct.s3cmci_host*) #1

declare dso_local i32 @s3cmci_debugfs_remove(%struct.s3cmci_host*) #1

declare dso_local i32 @s3cmci_cpufreq_deregister(%struct.s3cmci_host*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
