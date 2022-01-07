; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_test_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_test_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }

@sky2_test_intr = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot assign irq %d\0A\00", align 1
@B0_IMSK = common dso_local global i32 0, align 4
@Y2_IS_IRQ_SW = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@CS_ST_SW_IRQ = common dso_local global i32 0, align 4
@SKY2_HW_USE_MSI = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"No interrupt generated using MSI, switching to INTx mode.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CS_CL_SW_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_hw*)* @sky2_test_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_test_msi(%struct.sky2_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  %6 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %7 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %10 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %9, i32 0, i32 1
  %11 = call i32 @init_waitqueue_head(i32* %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @sky2_test_intr, align 4
  %16 = load i32, i32* @DRV_NAME, align 4
  %17 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %18 = call i32 @request_irq(i32 %14, i32 %15, i32 0, i32 %16, %struct.sky2_hw* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %81

29:                                               ; preds = %1
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %31 = load i32, i32* @B0_IMSK, align 4
  %32 = load i32, i32* @Y2_IS_IRQ_SW, align 4
  %33 = call i32 @sky2_write32(%struct.sky2_hw* %30, i32 %31, i32 %32)
  %34 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %35 = load i32, i32* @B0_CTST, align 4
  %36 = load i32, i32* @CS_ST_SW_IRQ, align 4
  %37 = call i32 @sky2_write8(%struct.sky2_hw* %34, i32 %35, i32 %36)
  %38 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %39 = load i32, i32* @B0_CTST, align 4
  %40 = call i32 @sky2_read8(%struct.sky2_hw* %38, i32 %39)
  %41 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %42 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %45 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SKY2_HW_USE_MSI, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @HZ, align 4
  %50 = sdiv i32 %49, 10
  %51 = call i32 @wait_event_timeout(i32 %43, i32 %48, i32 %50)
  %52 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %53 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SKY2_HW_USE_MSI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %29
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 1
  %61 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %65 = load i32, i32* @B0_CTST, align 4
  %66 = load i32, i32* @CS_CL_SW_IRQ, align 4
  %67 = call i32 @sky2_write8(%struct.sky2_hw* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %58, %29
  %69 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %70 = load i32, i32* @B0_IMSK, align 4
  %71 = call i32 @sky2_write32(%struct.sky2_hw* %69, i32 %70, i32 0)
  %72 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %73 = load i32, i32* @B0_IMSK, align 4
  %74 = call i32 @sky2_read32(%struct.sky2_hw* %72, i32 %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %79 = call i32 @free_irq(i32 %77, %struct.sky2_hw* %78)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %68, %21
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.sky2_hw*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read8(%struct.sky2_hw*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.sky2_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
