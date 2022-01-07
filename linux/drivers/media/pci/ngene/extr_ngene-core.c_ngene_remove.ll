; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ngene = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@MAX_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngene_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ngene*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.ngene* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.ngene* %6, %struct.ngene** %3, align 8
  %7 = load %struct.ngene*, %struct.ngene** %3, align 8
  %8 = getelementptr inbounds %struct.ngene, %struct.ngene* %7, i32 0, i32 2
  %9 = call i32 @tasklet_kill(i32* %8)
  %10 = load i32, i32* @MAX_STREAM, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %23, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.ngene*, %struct.ngene** %3, align 8
  %17 = getelementptr inbounds %struct.ngene, %struct.ngene* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @release_channel(i32* %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  br label %12

26:                                               ; preds = %12
  %27 = load %struct.ngene*, %struct.ngene** %3, align 8
  %28 = getelementptr inbounds %struct.ngene, %struct.ngene* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.ngene*, %struct.ngene** %3, align 8
  %34 = call i32 @cxd_detach(%struct.ngene* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.ngene*, %struct.ngene** %3, align 8
  %37 = call i32 @ngene_stop(%struct.ngene* %36)
  %38 = load %struct.ngene*, %struct.ngene** %3, align 8
  %39 = call i32 @ngene_release_buffers(%struct.ngene* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = call i32 @pci_disable_device(%struct.pci_dev* %40)
  ret void
}

declare dso_local %struct.ngene* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @release_channel(i32*) #1

declare dso_local i32 @cxd_detach(%struct.ngene*) #1

declare dso_local i32 @ngene_stop(%struct.ngene*) #1

declare dso_local i32 @ngene_release_buffers(%struct.ngene*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
