; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_set_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_endpoint_test = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }

@IRQ_TYPE_LEGACY = common dso_local global i32 0, align 4
@IRQ_TYPE_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid IRQ type option\0A\00", align 1
@irq_type = common dso_local global i32 0, align 4
@IRQ_TYPE_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_endpoint_test*, i32)* @pci_endpoint_test_set_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_endpoint_test_set_irq(%struct.pci_endpoint_test* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_endpoint_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.pci_endpoint_test* %0, %struct.pci_endpoint_test** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %4, align 8
  %9 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IRQ_TYPE_LEGACY, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IRQ_TYPE_MSIX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %2
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %49

23:                                               ; preds = %16
  %24 = load i32, i32* @irq_type, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %49

28:                                               ; preds = %23
  %29 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %4, align 8
  %30 = call i32 @pci_endpoint_test_release_irq(%struct.pci_endpoint_test* %29)
  %31 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %4, align 8
  %32 = call i32 @pci_endpoint_test_free_irq_vectors(%struct.pci_endpoint_test* %31)
  %33 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @pci_endpoint_test_alloc_irq_vectors(%struct.pci_endpoint_test* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %4, align 8
  %40 = call i32 @pci_endpoint_test_request_irq(%struct.pci_endpoint_test* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* @irq_type, align 4
  store i32 1, i32* %3, align 4
  br label %49

45:                                               ; preds = %42, %37
  %46 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %4, align 8
  %47 = call i32 @pci_endpoint_test_free_irq_vectors(%struct.pci_endpoint_test* %46)
  %48 = load i32, i32* @IRQ_TYPE_UNDEFINED, align 4
  store i32 %48, i32* @irq_type, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %43, %27, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pci_endpoint_test_release_irq(%struct.pci_endpoint_test*) #1

declare dso_local i32 @pci_endpoint_test_free_irq_vectors(%struct.pci_endpoint_test*) #1

declare dso_local i32 @pci_endpoint_test_alloc_irq_vectors(%struct.pci_endpoint_test*, i32) #1

declare dso_local i32 @pci_endpoint_test_request_irq(%struct.pci_endpoint_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
