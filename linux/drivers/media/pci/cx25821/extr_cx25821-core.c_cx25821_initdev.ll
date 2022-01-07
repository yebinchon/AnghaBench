; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_initdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_initdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.cx25821_dev = type { i32, i32, i64, i32, i32, %struct.pci_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pci enable failed!\0A\00", align 1
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"%s/0: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s/0: Oops: no 32bit PCI DMA ???\0A\00", align 1
@cx25821_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: can't get IRQ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"cx25821_initdev() can't get IRQ !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cx25821_initdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25821_initdev(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.cx25821_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cx25821_dev* @kzalloc(i32 32, i32 %8)
  store %struct.cx25821_dev* %9, %struct.cx25821_dev** %6, align 8
  %10 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %11 = icmp eq %struct.cx25821_dev* null, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %120

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %19 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %18, i32 0, i32 0
  %20 = call i32 @v4l2_device_register(i32* %17, i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %116

24:                                               ; preds = %15
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %27 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %26, i32 0, i32 5
  store %struct.pci_dev* %25, %struct.pci_dev** %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i64 @pci_enable_device(%struct.pci_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  %34 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %112

35:                                               ; preds = %24
  %36 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %37 = call i32 @cx25821_dev_setup(%struct.cx25821_dev* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %109

41:                                               ; preds = %35
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %44 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %45 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %44, i32 0, i32 4
  %46 = call i32 @pci_read_config_byte(%struct.pci_dev* %42, i32 %43, i32* %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %49 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %50 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %49, i32 0, i32 3
  %51 = call i32 @pci_read_config_byte(%struct.pci_dev* %47, i32 %48, i32* %50)
  %52 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %53 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pci_name(%struct.pci_dev* %55)
  %57 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %58 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %64 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %67 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %56, i32 %59, i32 %62, i32 %65, i64 %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @pci_set_master(%struct.pci_dev* %70)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = call i32 @pci_set_dma_mask(%struct.pci_dev* %72, i32 -1)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %41
  %77 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %78 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %105

83:                                               ; preds = %41
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @cx25821_irq, align 4
  %88 = load i32, i32* @IRQF_SHARED, align 4
  %89 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %90 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %93 = call i32 @request_irq(i32 %86, i32 %87, i32 %88, i32 %91, %struct.cx25821_dev* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %83
  %97 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %98 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %102)
  br label %105

104:                                              ; preds = %83
  store i32 0, i32* %3, align 4
  br label %120

105:                                              ; preds = %96, %76
  %106 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %108 = call i32 @cx25821_dev_unregister(%struct.cx25821_dev* %107)
  br label %109

109:                                              ; preds = %105, %40
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = call i32 @pci_disable_device(%struct.pci_dev* %110)
  br label %112

112:                                              ; preds = %109, %31
  %113 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %114 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %113, i32 0, i32 0
  %115 = call i32 @v4l2_device_unregister(i32* %114)
  br label %116

116:                                              ; preds = %112, %23
  %117 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %118 = call i32 @kfree(%struct.cx25821_dev* %117)
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %104, %12
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.cx25821_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @cx25821_dev_setup(%struct.cx25821_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.cx25821_dev*) #1

declare dso_local i32 @cx25821_dev_unregister(%struct.cx25821_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.cx25821_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
