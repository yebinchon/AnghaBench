; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_initdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_initdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.cx23885_dev = type { i32, %struct.TYPE_3__, i32, i32, i32, %struct.pci_dev*, %struct.v4l2_ctrl_handler, i32 }
%struct.TYPE_3__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%s/0: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s/0: Oops: no 32bit PCI DMA ???\0A\00", align 1
@cx23885_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: can't get IRQ %d\0A\00", align 1
@PCI_MSK_GPIO1 = common dso_local global i32 0, align 4
@PCI_MSK_GPIO0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cx23885_initdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_initdev(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.cx23885_dev*, align 8
  %7 = alloca %struct.v4l2_ctrl_handler*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cx23885_dev* @kzalloc(i32 48, i32 %9)
  store %struct.cx23885_dev* %10, %struct.cx23885_dev** %6, align 8
  %11 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %12 = icmp eq %struct.cx23885_dev* null, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %156

16:                                               ; preds = %2
  %17 = call i32 (...) @cx23885_does_need_dma_reset()
  %18 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %19 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 2
  %22 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %23 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %22, i32 0, i32 1
  %24 = call i32 @v4l2_device_register(i32* %21, %struct.TYPE_3__* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %152

28:                                               ; preds = %16
  %29 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %30 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %29, i32 0, i32 6
  store %struct.v4l2_ctrl_handler* %30, %struct.v4l2_ctrl_handler** %7, align 8
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %32 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %31, i32 6)
  %33 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %146

41:                                               ; preds = %28
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %43 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %44 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %42, %struct.v4l2_ctrl_handler** %45, align 8
  %46 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %47 = call i32 @cx23885_v4l2_dev_notify_init(%struct.cx23885_dev* %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %50 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %49, i32 0, i32 5
  store %struct.pci_dev* %48, %struct.pci_dev** %50, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = call i64 @pci_enable_device(%struct.pci_dev* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %146

57:                                               ; preds = %41
  %58 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %59 = call i64 @cx23885_dev_setup(%struct.cx23885_dev* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %146

64:                                               ; preds = %57
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %69 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %72 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %73 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %72, i32 0, i32 3
  %74 = call i32 @pci_read_config_byte(%struct.pci_dev* %70, i32 %71, i32* %73)
  %75 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %76 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = call i32 @pci_name(%struct.pci_dev* %78)
  %80 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %81 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %87 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = call i64 @pci_resource_start(%struct.pci_dev* %89, i32 0)
  %91 = call i32 @pr_info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %79, i32 %82, i32 %85, i32 %88, i64 %90)
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = call i32 @pci_set_master(%struct.pci_dev* %92)
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = call i32 @pci_set_dma_mask(%struct.pci_dev* %94, i32 -1)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %64
  %99 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %100 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %146

103:                                              ; preds = %64
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @cx23885_irq, align 4
  %108 = load i32, i32* @IRQF_SHARED, align 4
  %109 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %110 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %113 = call i32 @request_irq(i32 %106, i32 %107, i32 %108, i32 %111, %struct.cx23885_dev* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %103
  %117 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %118 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %122)
  br label %143

124:                                              ; preds = %103
  %125 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %126 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %138 [
    i32 129, label %128
    i32 128, label %134
  ]

128:                                              ; preds = %124
  %129 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %130 = load i32, i32* @PCI_MSK_GPIO1, align 4
  %131 = load i32, i32* @PCI_MSK_GPIO0, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @cx23885_irq_add_enable(%struct.cx23885_dev* %129, i32 %132)
  br label %138

134:                                              ; preds = %124
  %135 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %136 = load i32, i32* @PCI_MSK_GPIO0, align 4
  %137 = call i32 @cx23885_irq_add_enable(%struct.cx23885_dev* %135, i32 %136)
  br label %138

138:                                              ; preds = %124, %134, %128
  %139 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %140 = call i32 @cx23885_ir_pci_int_enable(%struct.cx23885_dev* %139)
  %141 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %142 = call i32 @cx23885_input_init(%struct.cx23885_dev* %141)
  store i32 0, i32* %3, align 4
  br label %156

143:                                              ; preds = %116
  %144 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %145 = call i32 @cx23885_dev_unregister(%struct.cx23885_dev* %144)
  br label %146

146:                                              ; preds = %143, %98, %61, %54, %37
  %147 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %148 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %147)
  %149 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %150 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %149, i32 0, i32 1
  %151 = call i32 @v4l2_device_unregister(%struct.TYPE_3__* %150)
  br label %152

152:                                              ; preds = %146, %27
  %153 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %154 = call i32 @kfree(%struct.cx23885_dev* %153)
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %138, %13
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.cx23885_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @cx23885_does_need_dma_reset(...) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @cx23885_v4l2_dev_notify_init(%struct.cx23885_dev*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @cx23885_dev_setup(%struct.cx23885_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.cx23885_dev*) #1

declare dso_local i32 @cx23885_irq_add_enable(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx23885_ir_pci_int_enable(%struct.cx23885_dev*) #1

declare dso_local i32 @cx23885_input_init(%struct.cx23885_dev*) #1

declare dso_local i32 @cx23885_dev_unregister(%struct.cx23885_dev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.cx23885_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
