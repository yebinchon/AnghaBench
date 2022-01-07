; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_pcmcia_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_pcmcia_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Searching MMC controller for pcmcia device %s %s ...\0A\00", align 1
@PCI_VENDOR_ID_RICOH = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_RICOH_RL5C476 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"MMC controller found\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"No MMC controller was found.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @sdricoh_pcmcia_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdricoh_pcmcia_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 0
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32*, i8*, ...) @dev_info(i32* %6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %16)
  br label %18

18:                                               ; preds = %33, %1
  %19 = load i32, i32* @PCI_VENDOR_ID_RICOH, align 4
  %20 = load i32, i32* @PCI_DEVICE_ID_RICOH_RL5C476, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call %struct.pci_dev* @pci_get_device(i32 %19, i32 %20, %struct.pci_dev* %21)
  store %struct.pci_dev* %22, %struct.pci_dev** %4, align 8
  %23 = icmp ne %struct.pci_dev* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = call i32 @sdricoh_init_mmc(%struct.pci_dev* %25, %struct.pcmcia_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_info(i32* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %40

33:                                               ; preds = %24
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @sdricoh_init_mmc(%struct.pci_dev*, %struct.pcmcia_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
