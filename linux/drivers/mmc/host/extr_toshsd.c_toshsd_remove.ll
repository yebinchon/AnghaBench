; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.toshsd_host = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @toshsd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshsd_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.toshsd_host*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.toshsd_host* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.toshsd_host* %5, %struct.toshsd_host** %3, align 8
  %6 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %7 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mmc_remove_host(i32 %8)
  %10 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %11 = call i32 @toshsd_powerdown(%struct.toshsd_host* %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.toshsd_host* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %19 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pci_iounmap(%struct.pci_dev* %17, i32 %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @pci_release_regions(%struct.pci_dev* %22)
  %24 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %25 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mmc_free_host(i32 %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pci_set_drvdata(%struct.pci_dev* %28, i32* null)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = call i32 @pci_disable_device(%struct.pci_dev* %30)
  ret void
}

declare dso_local %struct.toshsd_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mmc_remove_host(i32) #1

declare dso_local i32 @toshsd_powerdown(%struct.toshsd_host*) #1

declare dso_local i32 @free_irq(i32, %struct.toshsd_host*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @mmc_free_host(i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
