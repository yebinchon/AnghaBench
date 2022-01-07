; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_endpoint_test = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }

@pci_endpoint_test_irqhandler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRV_MODULE_NAME = common dso_local global i32 0, align 4
@irq_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to request IRQ %d for Legacy\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to request IRQ %d for MSI %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to request IRQ %d for MSI-X %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_endpoint_test*)* @pci_endpoint_test_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_endpoint_test_request_irq(%struct.pci_endpoint_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_endpoint_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.pci_endpoint_test* %0, %struct.pci_endpoint_test** %3, align 8
  %8 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %9 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %8, i32 0, i32 1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %33, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %16 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @pci_irq_vector(%struct.pci_dev* %21, i32 %22)
  %24 = load i32, i32* @pci_endpoint_test_irqhandler, align 4
  %25 = load i32, i32* @IRQF_SHARED, align 4
  %26 = load i32, i32* @DRV_MODULE_NAME, align 4
  %27 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %28 = call i32 @devm_request_irq(%struct.device* %20, i32 %23, i32 %24, i32 %25, i32 %26, %struct.pci_endpoint_test* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %37

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %13

36:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %62

37:                                               ; preds = %31
  %38 = load i32, i32* @irq_type, align 4
  switch i32 %38, label %61 [
    i32 130, label %39
    i32 129, label %45
    i32 128, label %53
  ]

39:                                               ; preds = %37
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @pci_irq_vector(%struct.pci_dev* %41, i32 %42)
  %44 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %61

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pci_irq_vector(%struct.pci_dev* %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51)
  br label %61

53:                                               ; preds = %37
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @pci_irq_vector(%struct.pci_dev* %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %37, %53, %45, %39
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %36
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.pci_endpoint_test*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
