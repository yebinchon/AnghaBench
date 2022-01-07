; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_release_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_release_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_endpoint_test = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_endpoint_test*)* @pci_endpoint_test_release_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_endpoint_test_release_irq(%struct.pci_endpoint_test* %0) #0 {
  %2 = alloca %struct.pci_endpoint_test*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.pci_endpoint_test* %0, %struct.pci_endpoint_test** %2, align 8
  %6 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %2, align 8
  %7 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %6, i32 0, i32 1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %2, align 8
  %14 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_irq_vector(%struct.pci_dev* %19, i32 %20)
  %22 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %2, align 8
  %23 = call i32 @devm_free_irq(%struct.device* %18, i32 %21, %struct.pci_endpoint_test* %22)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %2, align 8
  %29 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  ret void
}

declare dso_local i32 @devm_free_irq(%struct.device*, i32, %struct.pci_endpoint_test*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
