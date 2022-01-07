; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/b2c2/extr_flexcop-pci.c_flexcop_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/b2c2/extr_flexcop-pci.c_flexcop_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_pci = type { %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"card revision %x\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot map io memory\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@flexcop_pci_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@FC_PCI_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_pci*)* @flexcop_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_pci_init(%struct.flexcop_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flexcop_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.flexcop_pci* %0, %struct.flexcop_pci** %3, align 8
  %5 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %6 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %12 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = call i32 @pci_enable_device(%struct.TYPE_9__* %13)
  store i32 %14, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %92

18:                                               ; preds = %1
  %19 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %20 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = call i32 @pci_set_master(%struct.TYPE_9__* %21)
  %23 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %24 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load i32, i32* @DRIVER_NAME, align 4
  %27 = call i32 @pci_request_regions(%struct.TYPE_9__* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %86

30:                                               ; preds = %18
  %31 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %32 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = call i32 @pci_iomap(%struct.TYPE_9__* %33, i32 0, i32 2048)
  %35 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %36 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %38 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %81

45:                                               ; preds = %30
  %46 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %47 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %50 = call i32 @pci_set_drvdata(%struct.TYPE_9__* %48, %struct.flexcop_pci* %49)
  %51 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %52 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %51, i32 0, i32 3
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %55 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @flexcop_pci_isr, align 4
  %60 = load i32, i32* @IRQF_SHARED, align 4
  %61 = load i32, i32* @DRIVER_NAME, align 4
  %62 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %63 = call i32 @request_irq(i32 %58, i32 %59, i32 %60, i32 %61, %struct.flexcop_pci* %62)
  store i32 %63, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %45
  br label %73

66:                                               ; preds = %45
  %67 = load i32, i32* @FC_PCI_INIT, align 4
  %68 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %69 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %92

73:                                               ; preds = %65
  %74 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %75 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %78 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pci_iounmap(%struct.TYPE_9__* %76, i32 %79)
  br label %81

81:                                               ; preds = %73, %41
  %82 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %83 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = call i32 @pci_release_regions(%struct.TYPE_9__* %84)
  br label %86

86:                                               ; preds = %81, %29
  %87 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %88 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = call i32 @pci_disable_device(%struct.TYPE_9__* %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %86, %66, %16
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @pci_enable_device(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_set_master(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_request_regions(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pci_iomap(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_9__*, %struct.flexcop_pci*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.flexcop_pci*) #1

declare dso_local i32 @pci_iounmap(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
