; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_genwqe_release_service_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_genwqe_release_service_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32, i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genwqe_release_service_layer(%struct.genwqe_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.genwqe_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %3, align 8
  %5 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %6 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %5, i32 0, i32 2
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %4, align 8
  %8 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %9 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %8, i32 0, i32 0
  %10 = call i32 @ddcb_queue_initialized(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.genwqe_dev* %17)
  %19 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %20 = call i32 @genwqe_reset_interrupt_capability(%struct.genwqe_dev* %19)
  %21 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %22 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %27 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kthread_stop(i32* %28)
  %30 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %31 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %13
  %33 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %34 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %35 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %34, i32 0, i32 0
  %36 = call i32 @free_ddcb_queue(%struct.genwqe_dev* %33, i32* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ddcb_queue_initialized(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.genwqe_dev*) #1

declare dso_local i32 @genwqe_reset_interrupt_capability(%struct.genwqe_dev*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @free_ddcb_queue(%struct.genwqe_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
