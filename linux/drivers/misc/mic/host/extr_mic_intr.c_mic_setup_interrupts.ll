; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.mic_device*)* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"no usable interrupts\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mic_setup_interrupts(%struct.mic_device* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mic_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.mic_device* %0, %struct.mic_device** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %7 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %9 = call i32 @mic_setup_msix(%struct.mic_device* %7, %struct.pci_dev* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = call i32 @mic_setup_msi(%struct.mic_device* %14, %struct.pci_dev* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %34

20:                                               ; preds = %13
  %21 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = call i32 @mic_setup_intx(%struct.mic_device* %21, %struct.pci_dev* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %28 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %19, %12
  %35 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %36 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.mic_device*)*, i32 (%struct.mic_device*)** %38, align 8
  %40 = load %struct.mic_device*, %struct.mic_device** %4, align 8
  %41 = call i32 %39(%struct.mic_device* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %26
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mic_setup_msix(%struct.mic_device*, %struct.pci_dev*) #1

declare dso_local i32 @mic_setup_msi(%struct.mic_device*, %struct.pci_dev*) #1

declare dso_local i32 @mic_setup_intx(%struct.mic_device*, %struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
