; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx8800_finidev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx8800_finidev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cx8800_dev = type { i32, %struct.cx88_core* }
%struct.cx88_core = type { i32*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cx8800_finidev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx8800_finidev(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.cx8800_dev*, align 8
  %4 = alloca %struct.cx88_core*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.cx8800_dev* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.cx8800_dev* %6, %struct.cx8800_dev** %3, align 8
  %7 = load %struct.cx8800_dev*, %struct.cx8800_dev** %3, align 8
  %8 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %7, i32 0, i32 1
  %9 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  store %struct.cx88_core* %9, %struct.cx88_core** %4, align 8
  %10 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %11 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %16 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kthread_stop(i32* %17)
  %19 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %20 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %23 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %28 = call i32 @cx88_ir_stop(%struct.cx88_core* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %31 = call i32 @cx88_shutdown(%struct.cx88_core* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cx8800_dev*, %struct.cx8800_dev** %3, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.cx8800_dev* %35)
  %37 = load %struct.cx8800_dev*, %struct.cx8800_dev** %3, align 8
  %38 = call i32 @cx8800_unregister_video(%struct.cx8800_dev* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_disable_device(%struct.pci_dev* %39)
  %41 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %42 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %44 = load %struct.cx8800_dev*, %struct.cx8800_dev** %3, align 8
  %45 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @cx88_core_put(%struct.cx88_core* %43, i32 %46)
  %48 = load %struct.cx8800_dev*, %struct.cx8800_dev** %3, align 8
  %49 = call i32 @kfree(%struct.cx8800_dev* %48)
  ret void
}

declare dso_local %struct.cx8800_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @cx88_ir_stop(%struct.cx88_core*) #1

declare dso_local i32 @cx88_shutdown(%struct.cx88_core*) #1

declare dso_local i32 @free_irq(i32, %struct.cx8800_dev*) #1

declare dso_local i32 @cx8800_unregister_video(%struct.cx8800_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @cx88_core_put(%struct.cx88_core*, i32) #1

declare dso_local i32 @kfree(%struct.cx8800_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
