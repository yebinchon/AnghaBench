; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_suspend_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_suspend_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cx8802_dev = type { %struct.TYPE_3__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"suspend\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"suspend mpeg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @cx8802_suspend_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_suspend_common(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx8802_dev*, align 8
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.cx8802_dev* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.cx8802_dev* %8, %struct.cx8802_dev** %5, align 8
  %9 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %10 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %9, i32 0, i32 2
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %14 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %22 = call i32 @cx8802_stop_dma(%struct.cx8802_dev* %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %25 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %24, i32 0, i32 2
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %29 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cx88_shutdown(i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = call i32 @pci_save_state(%struct.pci_dev* %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @pci_choose_state(%struct.pci_dev* %35, i32 %36)
  %38 = call i64 @pci_set_power_state(%struct.pci_dev* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = call i32 @pci_disable_device(%struct.pci_dev* %41)
  %43 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %44 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %23
  ret i32 0
}

declare dso_local %struct.cx8802_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @cx8802_stop_dma(%struct.cx8802_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cx88_shutdown(i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i64 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
