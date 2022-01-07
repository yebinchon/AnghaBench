; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_resume_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_resume_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cx8802_dev = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"can't enable device\0A\00", align 1
@PCI_D0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"resume mpeg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @cx8802_resume_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_resume_common(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.cx8802_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.cx8802_dev* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.cx8802_dev* %8, %struct.cx8802_dev** %4, align 8
  %9 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %10 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = call i32 @pci_enable_device(%struct.pci_dev* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %67

22:                                               ; preds = %14
  %23 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %24 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* @PCI_D0, align 4
  %29 = call i32 @pci_set_power_state(%struct.pci_dev* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = call i32 @pci_disable_device(%struct.pci_dev* %34)
  %36 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %37 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %67

40:                                               ; preds = %26
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = call i32 @pci_restore_state(%struct.pci_dev* %41)
  %43 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %44 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cx88_reset(i32 %45)
  %47 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %48 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %52 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @list_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %40
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %59 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %60 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %59, i32 0, i32 1
  %61 = call i32 @cx8802_restart_queue(%struct.cx8802_dev* %58, %struct.TYPE_4__* %60)
  br label %62

62:                                               ; preds = %56, %40
  %63 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %64 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %32, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.cx8802_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @cx88_reset(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @cx8802_restart_queue(%struct.cx8802_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
