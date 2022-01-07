; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_basic_hw_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_basic_hw_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.rocker_wait = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"reg test failed\0A\00", align 1
@ROCKER_MSIX_VEC_TEST = common dso_local global i32 0, align 4
@rocker_test_irq_handler = common dso_local global i32 0, align 4
@rocker_driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot assign test irq\0A\00", align 1
@TEST_IRQ = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"no interrupt received within a timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"dma test failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*)* @rocker_basic_hw_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_basic_hw_test(%struct.rocker* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.rocker_wait, align 4
  %6 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %3, align 8
  %7 = load %struct.rocker*, %struct.rocker** %3, align 8
  %8 = getelementptr inbounds %struct.rocker, %struct.rocker* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.rocker*, %struct.rocker** %3, align 8
  %11 = call i32 @rocker_reg_test(%struct.rocker* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %65

19:                                               ; preds = %1
  %20 = load %struct.rocker*, %struct.rocker** %3, align 8
  %21 = load i32, i32* @ROCKER_MSIX_VEC_TEST, align 4
  %22 = call i32 @rocker_msix_vector(%struct.rocker* %20, i32 %21)
  %23 = load i32, i32* @rocker_test_irq_handler, align 4
  %24 = load i32, i32* @rocker_driver_name, align 4
  %25 = call i32 @request_irq(i32 %22, i32 %23, i32 0, i32 %24, %struct.rocker_wait* %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %65

33:                                               ; preds = %19
  %34 = call i32 @rocker_wait_init(%struct.rocker_wait* %5)
  %35 = load %struct.rocker*, %struct.rocker** %3, align 8
  %36 = load i32, i32* @TEST_IRQ, align 4
  %37 = load i32, i32* @ROCKER_MSIX_VEC_TEST, align 4
  %38 = call i32 @rocker_write32(%struct.rocker* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @HZ, align 4
  %40 = sdiv i32 %39, 10
  %41 = call i32 @rocker_wait_event_timeout(%struct.rocker_wait* %5, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %59

49:                                               ; preds = %33
  %50 = load %struct.rocker*, %struct.rocker** %3, align 8
  %51 = call i32 @rocker_dma_test(%struct.rocker* %50, %struct.rocker_wait* %5)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %49
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.rocker*, %struct.rocker** %3, align 8
  %61 = load i32, i32* @ROCKER_MSIX_VEC_TEST, align 4
  %62 = call i32 @rocker_msix_vector(%struct.rocker* %60, i32 %61)
  %63 = call i32 @free_irq(i32 %62, %struct.rocker_wait* %5)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %28, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @rocker_reg_test(%struct.rocker*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.rocker_wait*) #1

declare dso_local i32 @rocker_msix_vector(%struct.rocker*, i32) #1

declare dso_local i32 @rocker_wait_init(%struct.rocker_wait*) #1

declare dso_local i32 @rocker_write32(%struct.rocker*, i32, i32) #1

declare dso_local i32 @rocker_wait_event_timeout(%struct.rocker_wait*, i32) #1

declare dso_local i32 @rocker_dma_test(%struct.rocker*, %struct.rocker_wait*) #1

declare dso_local i32 @free_irq(i32, %struct.rocker_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
