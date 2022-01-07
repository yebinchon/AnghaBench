; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_pci_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_pci_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ENE = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_ENE_720 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @cb710_pci_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_pci_configure(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @PCI_SLOT(i32 %9)
  %11 = call i32 @PCI_DEVFN(i32 %10, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @cb710_pci_update_config_reg(%struct.pci_dev* %12, i32 72, i32 -256, i32 63)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call i32 @pci_read_config_dword(%struct.pci_dev* %14, i32 72, i32* %6)
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, -2147483648
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.pci_dev* @pci_get_slot(i32 %23, i32 %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %5, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = icmp ne %struct.pci_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %20
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCI_VENDOR_ID_ENE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCI_DEVICE_ID_ENE_720, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = call i32 @cb710_pci_update_config_reg(%struct.pci_dev* %44, i32 140, i32 -15728641, i32 1048576)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = call i32 @cb710_pci_update_config_reg(%struct.pci_dev* %46, i32 176, i32 -134217729, i32 134217728)
  br label %48

48:                                               ; preds = %43, %37, %31
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = call i32 @cb710_pci_update_config_reg(%struct.pci_dev* %49, i32 140, i32 -3841, i32 512)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = call i32 @cb710_pci_update_config_reg(%struct.pci_dev* %51, i32 144, i32 -393217, i32 262144)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = call i32 @pci_dev_put(%struct.pci_dev* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %48, %28, %19
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @cb710_pci_update_config_reg(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
