; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }

@sky2_intr = common dso_local global i32 0, align 4
@SKY2_HW_USE_MSI = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot assign irq %d\0A\00", align 1
@SKY2_HW_IRQ_SETUP = common dso_local global i32 0, align 4
@B0_IMSK = common dso_local global i32 0, align 4
@Y2_IS_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_hw*, i8*)* @sky2_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_setup_irq(%struct.sky2_hw* %0, i8* %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %8 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @sky2_intr, align 4
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %15 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SKY2_HW_USE_MSI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQF_SHARED, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %27 = call i32 @request_irq(i32 %12, i32 %13, i32 %24, i8* %25, %struct.sky2_hw* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 1
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %53

37:                                               ; preds = %23
  %38 = load i32, i32* @SKY2_HW_IRQ_SETUP, align 4
  %39 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %40 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %44 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %43, i32 0, i32 1
  %45 = call i32 @napi_enable(i32* %44)
  %46 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %47 = load i32, i32* @B0_IMSK, align 4
  %48 = load i32, i32* @Y2_IS_BASE, align 4
  %49 = call i32 @sky2_write32(%struct.sky2_hw* %46, i32 %47, i32 %48)
  %50 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %51 = load i32, i32* @B0_IMSK, align 4
  %52 = call i32 @sky2_read32(%struct.sky2_hw* %50, i32 %51)
  br label %53

53:                                               ; preds = %37, %30
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.sky2_hw*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
