; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-core.c_tw5864_initdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-core.c_tw5864_initdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.tw5864_dev = type { i32, i32, %struct.pci_dev*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tw5864:%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"pci_enable_device() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"32 bit PCI DMA is not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Cannot request regions for MMIO\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"can't ioremap() MMIO memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"TW5864 hardware version: %04x\0A\00", align 1
@TW5864_HW_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"TW5864 H.264 core version: %04x:%04x\0A\00", align 1
@TW5864_H264REV = common dso_local global i32 0, align 4
@TW5864_UNDECLARED_H264REV_PART2 = common dso_local global i32 0, align 4
@video_nr = common dso_local global i32 0, align 4
@tw5864_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"tw5864\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"can't get IRQ %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Note: there are known video quality issues. For details\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"see the comment in drivers/media/pci/tw5864/tw5864-core.c.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @tw5864_initdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_initdev(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.tw5864_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tw5864_dev* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.tw5864_dev* %11, %struct.tw5864_dev** %6, align 8
  %12 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %13 = icmp ne %struct.tw5864_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %161

17:                                               ; preds = %2
  %18 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %19 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i8* @pci_name(%struct.pci_dev* %21)
  %23 = call i32 @snprintf(i32 %20, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %27 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %26, i32 0, i32 0
  %28 = call i32 @v4l2_device_register(i32* %25, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %161

33:                                               ; preds = %17
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %36 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %35, i32 0, i32 2
  store %struct.pci_dev* %34, %struct.pci_dev** %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @pci_enable_device(%struct.pci_dev* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %43 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %42, i32 0, i32 2
  %44 = load %struct.pci_dev*, %struct.pci_dev** %43, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %156

47:                                               ; preds = %33
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = call i32 @pci_set_master(%struct.pci_dev* %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i32 @DMA_BIT_MASK(i32 32)
  %52 = call i32 @pci_set_dma_mask(%struct.pci_dev* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %57 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %56, i32 0, i32 2
  %58 = load %struct.pci_dev*, %struct.pci_dev** %57, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %153

61:                                               ; preds = %47
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %64 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pci_request_regions(%struct.pci_dev* %62, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %71 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %70, i32 0, i32 2
  %72 = load %struct.pci_dev*, %struct.pci_dev** %71, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %153

75:                                               ; preds = %61
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = call i32 @pci_ioremap_bar(%struct.pci_dev* %76, i32 0)
  %78 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %79 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %81 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  %87 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %88 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %87, i32 0, i32 2
  %89 = load %struct.pci_dev*, %struct.pci_dev** %88, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 0
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %150

92:                                               ; preds = %75
  %93 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %94 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %93, i32 0, i32 3
  %95 = call i32 @spin_lock_init(i32* %94)
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = load i32, i32* @TW5864_HW_VERSION, align 4
  %99 = call i32 @tw_readl(i32 %98)
  %100 = call i32 (i32*, i8*, ...) @dev_info(i32* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = load i32, i32* @TW5864_H264REV, align 4
  %104 = call i32 @tw_readl(i32 %103)
  %105 = load i32, i32* @TW5864_UNDECLARED_H264REV_PART2, align 4
  %106 = call i32 @tw_readl(i32 %105)
  %107 = call i32 (i32*, i8*, ...) @dev_info(i32* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %104, i32 %106)
  %108 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %109 = load i32, i32* @video_nr, align 4
  %110 = call i32 @tw5864_video_init(%struct.tw5864_dev* %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %92
  br label %145

114:                                              ; preds = %92
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 0
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @tw5864_isr, align 4
  %121 = load i32, i32* @IRQF_SHARED, align 4
  %122 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %123 = call i32 @devm_request_irq(i32* %116, i32 %119, i32 %120, i32 %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.tw5864_dev* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %114
  %127 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %128 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %127, i32 0, i32 2
  %129 = load %struct.pci_dev*, %struct.pci_dev** %128, align 8
  %130 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 0
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32*, i8*, ...) @dev_err(i32* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  br label %142

135:                                              ; preds = %114
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 0
  %138 = call i32 (i32*, i8*, ...) @dev_info(i32* %137, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 0
  %141 = call i32 (i32*, i8*, ...) @dev_info(i32* %140, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %161

142:                                              ; preds = %126
  %143 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %144 = call i32 @tw5864_video_fini(%struct.tw5864_dev* %143)
  br label %145

145:                                              ; preds = %142, %113
  %146 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %147 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @iounmap(i32 %148)
  br label %150

150:                                              ; preds = %145, %84
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = call i32 @pci_release_regions(%struct.pci_dev* %151)
  br label %153

153:                                              ; preds = %150, %69, %55
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = call i32 @pci_disable_device(%struct.pci_dev* %154)
  br label %156

156:                                              ; preds = %153, %41
  %157 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %158 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %157, i32 0, i32 0
  %159 = call i32 @v4l2_device_unregister(i32* %158)
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %156, %135, %31, %14
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.tw5864_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @tw_readl(i32) #1

declare dso_local i32 @tw5864_video_init(%struct.tw5864_dev*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.tw5864_dev*) #1

declare dso_local i32 @tw5864_video_fini(%struct.tw5864_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
