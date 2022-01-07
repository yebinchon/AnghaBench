; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_yawn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_yawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i64, i64, i32 }
%struct.pci_dev = type { i32 }

@DC21040 = common dso_local global i64 0, align 8
@DC21140 = common dso_local global i64 0, align 8
@EISA = common dso_local global i64 0, align 8
@PCI_CFPM = common dso_local global i32 0, align 4
@DE4X5_SICR = common dso_local global i32 0, align 4
@PCI_CFDA_PSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @yawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yawn(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.de4x5_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %8)
  store %struct.de4x5_private* %9, %struct.de4x5_private** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %14 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DC21040, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %20 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DC21140, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %2
  br label %68

25:                                               ; preds = %18
  %26 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %27 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EISA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %45 [
    i32 128, label %33
    i32 129, label %37
    i32 130, label %40
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @PCI_CFPM, align 4
  %35 = call i32 @outb(i32 128, i32 %34)
  %36 = call i32 @mdelay(i32 10)
  br label %45

37:                                               ; preds = %31
  %38 = load i32, i32* @PCI_CFPM, align 4
  %39 = call i32 @outb(i32 129, i32 %38)
  br label %45

40:                                               ; preds = %31
  %41 = load i32, i32* @DE4X5_SICR, align 4
  %42 = call i32 @outl(i32 0, i32 %41)
  %43 = load i32, i32* @PCI_CFPM, align 4
  %44 = call i32 @outb(i32 130, i32 %43)
  br label %45

45:                                               ; preds = %31, %40, %37, %33
  br label %68

46:                                               ; preds = %25
  %47 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %48 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.pci_dev* @to_pci_dev(i32 %49)
  store %struct.pci_dev* %50, %struct.pci_dev** %7, align 8
  %51 = load i32, i32* %4, align 4
  switch i32 %51, label %67 [
    i32 128, label %52
    i32 129, label %57
    i32 130, label %61
  ]

52:                                               ; preds = %46
  %53 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %54 = load i32, i32* @PCI_CFDA_PSM, align 4
  %55 = call i32 @pci_write_config_byte(%struct.pci_dev* %53, i32 %54, i32 128)
  %56 = call i32 @mdelay(i32 10)
  br label %67

57:                                               ; preds = %46
  %58 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %59 = load i32, i32* @PCI_CFDA_PSM, align 4
  %60 = call i32 @pci_write_config_byte(%struct.pci_dev* %58, i32 %59, i32 129)
  br label %67

61:                                               ; preds = %46
  %62 = load i32, i32* @DE4X5_SICR, align 4
  %63 = call i32 @outl(i32 0, i32 %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %65 = load i32, i32* @PCI_CFDA_PSM, align 4
  %66 = call i32 @pci_write_config_byte(%struct.pci_dev* %64, i32 %65, i32 130)
  br label %67

67:                                               ; preds = %46, %61, %57, %52
  br label %68

68:                                               ; preds = %24, %67, %45
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
