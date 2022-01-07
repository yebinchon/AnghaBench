; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { %struct.TYPE_10__*, %struct.cx88_core*, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.cx88_core = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Oops: no 32bit PCI DMA ???\0A\00", align 1
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\0A\00", align 1
@cx8802_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"can't get IRQ %d\0A\00", align 1
@MO_PCI_INTMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_dev*)* @cx8802_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_init_common(%struct.cx8802_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx8802_dev*, align 8
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca i32, align 4
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %3, align 8
  %6 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %7 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %6, i32 0, i32 1
  %8 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  store %struct.cx88_core* %8, %struct.cx88_core** %4, align 8
  %9 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = call i64 @pci_enable_device(%struct.TYPE_10__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %110

17:                                               ; preds = %1
  %18 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %19 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = call i32 @pci_set_master(%struct.TYPE_10__* %20)
  %22 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %23 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = call i32 @DMA_BIT_MASK(i32 32)
  %26 = call i32 @pci_set_dma_mask(%struct.TYPE_10__* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %110

33:                                               ; preds = %17
  %34 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %35 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %40 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %42 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %45 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %46 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %45, i32 0, i32 4
  %47 = call i32 @pci_read_config_byte(%struct.TYPE_10__* %43, i32 %44, i32* %46)
  %48 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %49 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = call i32 @pci_name(%struct.TYPE_10__* %50)
  %52 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %53 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %56 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %61 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %64 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = call i64 @pci_resource_start(%struct.TYPE_10__* %65, i32 0)
  %67 = call i32 @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54, i32 %59, i32 %62, i64 %66)
  %68 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %69 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %68, i32 0, i32 3
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %72 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %76 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @cx8802_irq, align 4
  %81 = load i32, i32* @IRQF_SHARED, align 4
  %82 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %83 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %82, i32 0, i32 1
  %84 = load %struct.cx88_core*, %struct.cx88_core** %83, align 8
  %85 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %88 = call i32 @request_irq(i32 %79, i32 %80, i32 %81, i32 %86, %struct.cx8802_dev* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %33
  %92 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %93 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %110

99:                                               ; preds = %33
  %100 = load i32, i32* @MO_PCI_INTMSK, align 4
  %101 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %102 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cx_set(i32 %100, i32 %103)
  %105 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %106 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %109 = call i32 @pci_set_drvdata(%struct.TYPE_10__* %107, %struct.cx8802_dev* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %99, %91, %29, %14
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @pci_enable_device(%struct.TYPE_10__*) #1

declare dso_local i32 @pci_set_master(%struct.TYPE_10__*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @pci_name(%struct.TYPE_10__*) #1

declare dso_local i64 @pci_resource_start(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.cx8802_dev*) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_10__*, %struct.cx8802_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
