; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_intr_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_intr_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { %struct.TYPE_3__*, %struct.TYPE_4__, %struct.pci_dev* }
%struct.TYPE_3__ = type { i32 (%struct.mic_device*, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.pci_dev = type { i32 }

@MIC_NUM_OFFSETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mic_intr_restore(%struct.mic_device* %0) #0 {
  %2 = alloca %struct.mic_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.mic_device* %0, %struct.mic_device** %2, align 8
  %6 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %7 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = call i32 @pci_dev_msi_enabled(%struct.pci_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %57

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %54, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %17 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %50, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MIC_NUM_OFFSETS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %28 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %26
  %40 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %41 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.mic_device*, i32, i32, i32)*, i32 (%struct.mic_device*, i32, i32, i32)** %43, align 8
  %45 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 %44(%struct.mic_device* %45, i32 %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %39, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %22

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %14

57:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @pci_dev_msi_enabled(%struct.pci_dev*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
